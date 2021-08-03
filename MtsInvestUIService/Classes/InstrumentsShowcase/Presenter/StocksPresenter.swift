//
//  StocksStocksPresenter.swift
//  finservice
//
//  Created by Semyon on 08/11/2019.
//  Copyright © 2019 FinService. All rights reserved.
//

import UIKit
import SnapKit

protocol StocksPresenterInterface: UISearchResultsUpdating,
                                   UISearchControllerDelegate,
                                   ViewControllerLifeCycleSupportable,
                                   IPeriodUpdate,
                                   IRenewStreamsSupportable {
    var type: BrokerageInstrumentType { get set }
    var portfolioType: BrokeragePortfolioType { get set }
    func viewIsReady()
    func loadData()
    func configureTableView(_ tableView: UITableView)
    func selectSortingAction()
    func updateSorting(_ sorting: StocksSorting, isDescending: Bool)
    func handleSegmentSelection(index: Int)
}

protocol StocksPresenterOutput: IPeriodSelectable,
                                ReloadableView where Self: UIViewController {
    func getVisibleCellsIndices() -> [Int]
    func getTabsView(index: Int) -> UIView
    func searchWillAppear()
    func searchWillDisappear(_ type: String)
    func showLoadError(_ show: Bool)
    func presentSortingOptions(selected: StocksSorting, isDescending: Bool)
    func updateType(_ type: StocksPresenter.InstrumentType)
    func hidePeriod(hidden: Bool)
    func showPeriod(show: Bool)
    func dismissSearchController()
    func onRowSelect(for brief: InstrumentBrief, type: BrokerageInstrumentType)
    func setTableViewBounces(_ bounces: Bool)
}

final class StocksPresenter: NSObject, StocksPresenterInterface {
    
    enum InstrumentType: Int {
        case bpif
        case stock
        case bond
        
        var commonTitle: String {
            switch self {
            case .stock:
                return R.string.localizable.stocksTitle()
            case .bond:
                return R.string.localizable.obligationsTitle()
            case .bpif:
                return R.string.localizable.brokerageBPIFTitle()
            }
        }
    }
    
    // MARK: Constants
    private struct Constants {
        static let skeletonsCount = 30
        static let timerInterval: TimeInterval = 0.7
        static let streamLineOffsetPerSide = 6
    }

    // MARK: External properties
    weak var view: StocksPresenterOutput!
    var interactor: StocksInteractorInterface!
    var type: BrokerageInstrumentType = .bpif
    var portfolioType: BrokeragePortfolioType  = .mts

    // MARK: Internal properties
    private var animationTimer: Timer?
    private var isLoaded = false
    private var sorting = StocksSorting.none
    private var isSortingDescending: Bool = true
    private var searchKey: String?
    private var portfolioLastResponse: Portfolio_Service_Commons_Portfolio?
    private let dateFormatter = DateFormatter.create(with: .d_MMM_yyyy)

    //MARK: Data properties
    private var initialInstruments = [InstrumentBrief]()
    private var currentCategoryInstruments = [InstrumentBrief]()
    private var currentInstruments = [InstrumentBrief]()
    private var configurators = [StocksHolder]()
    
    //MARK: Computed properties
    private var period = FeedPeriod.oneYear {
        didSet {
            view.updatePeriodTitle(period: period)
        }
    }
    
    private var selectedTab: StocksPresenter.InstrumentType = .bpif
    private var allInstrumentTypes: [BrokerageInstrumentType] = [.bpif,
                                                                 .stock,
                                                                 .foreignStock,
                                                                 .obligation,
                                                                 .foreignObligation]

    // MARK: Lifecycle
    func viewIsReady() {
        view.updatePeriodTitle(period: period)
        view.updateType(selectedTab)
        interactor.portfolioType = portfolioType
        loadData()
    }
    

    func viewWillAppear() {
        view.updateType(selectedTab)
    }
    
    func renewEvents() {
        updateStreamsIfNeeded()
    }
    
    func prepareToResign() {
        interactor.prepareToResign()
    }
    
    //MARK: StocksPresenterInterface
    func loadData() {
        view.showLoadError(false)
        view.hidePeriod(hidden: true)
        interactor.loadData(type: allInstrumentTypes, filters: nil)
    }

    func configureTableView(_ tableView: UITableView) {
        tableView.delegate = self
        tableView.dataSource = self
    }

    func selectPeriodAction() {
        view.presentPeriodSelection(selected: period)
    }
    
    func selectSortingAction() {
        view.presentSortingOptions(selected: sorting, isDescending: isSortingDescending)
    }

    func updatePeriod(_ period: FeedPeriod) {
        guard period != self.period else { return }
        self.period = period
        compoundSearch()
    }
    
    func updateSorting(_ sorting: StocksSorting, isDescending: Bool) {
        guard sorting != self.sorting || isDescending != self.isSortingDescending else { return }
        self.sorting = sorting
        self.isSortingDescending = isDescending
        compoundSearch()
    }
}

//MARK: Building Configurators
extension StocksPresenter {
    private func buildConfiguratorsFor(instruments: [InstrumentBrief], portfolioFreeValue: Double? = nil) -> [StocksHolder] {
        return instruments.map { instrument in
            let instrumentCurrentPrice: Double = (convert(instrument.price) * Double(instrument.lotSize))
            
            var description: String
            if instrument.hasMaturityDate {
                let grpcDate = instrument.maturityDate
                if let date = Date.createFrom(year: Int(grpcDate.year),
                                              month: Int(grpcDate.month),
                                              day: Int(grpcDate.day)) {
                    let formattedDate = dateFormatter.string(from: date)
                    description = R.string.localizable.instrumentMaturityBefore() + " " + formattedDate
                } else {
                    description = instrument.instrumentID
                }
            } else {
                description = instrument.instrumentID
            }
            
            let growth = getGrowthFrom(model: instrument, for: period)
            let viewModel = FeedShareViewModel(title: instrument.description_p,
                                               description: description,
                                               originalId: instrument.instrumentID,
                                               price: convert(instrument.price),
                                               growth: growth,
                                               currency: instrument.currency)
            
            return StocksHolder(data: viewModel)
        }
    }
}

//MARK: Searching/sorting logic
extension StocksPresenter {
    private func compoundSearch() {
        
        updateInstrumentsForCurrentKey()
        updateCurrentInstrumentsForCurrentSorting()
        
        var freeValue: Double?
        if let value = portfolioLastResponse?.freeValue {
            freeValue = Double(value)
        }
        
        configurators = buildConfiguratorsFor(instruments: currentInstruments,
                                              portfolioFreeValue: freeValue)

        DispatchQueue.main.async { [weak self] in
            self?.view.reload()
            self?.updateStreamsIfNeeded()
        }
    }
    
    private func updateInstrumentsForCurrentKey() {
        guard let key = searchKey,
            !key.isEmpty else {
            currentInstruments = currentCategoryInstruments
            //handleSegmentSelection(index: selectedTab.rawValue)
            return
        }
        
        let searchTerm = key.components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty }
        currentInstruments = Array(NSOrderedSet(array: currentCategoryInstruments.filter { (item) -> Bool in
            for term in searchTerm {
                if item.description_p.lowercased().contains(term.lowercased()) ||
                    item.instrumentID.lowercased().contains(term.lowercased()) {
                    return true
                }
            }
            return false
        })) as? [InstrumentBrief] ?? []
    }
    
    private func updateCurrentInstrumentsForCurrentSorting() {
        func sortMapping<T: Comparable>(_ mapping: (InstrumentBrief) -> T) {
            currentInstruments.sort {
                let instruments = isSortingDescending ? [$0, $1] : [$1, $0]
                let comparables = instruments.map(mapping)
                return comparables[0] > comparables[1]
            }
        }
        switch sorting {
        case .alphabet:
            sortMapping { $0.description_p }
        case .price:
            sortMapping { convert($0.price) }
        case .yield:
            sortMapping { getGrowthFrom(model: $0, for: period) }
        default:
            break
        }
    }
    
    func handleSegmentSelection(index: Int) {
        prepareToResign()
        
        selectedTab = StocksPresenter.InstrumentType(rawValue: index) ?? .bpif
        view.updateType(selectedTab)
        
        switch selectedTab {
        case .bpif:
            type = .bpif
            currentCategoryInstruments = initialInstruments.filter { $0.commonType == .etf }
        case .stock:
            type = .stock
            currentCategoryInstruments = initialInstruments.filter { (($0.commonType == .stock || $0.commonType == .foreignStock)) }
        case .bond:
            type = .obligation
            currentCategoryInstruments = initialInstruments.filter { (($0.commonType == .bond || $0.commonType == .foreignBond)) }
        }
        
        currentInstruments = currentCategoryInstruments
        updateInstrumentsForCurrentKey()
        updateCurrentInstrumentsForCurrentSorting()
        
        configurators = buildConfiguratorsFor(instruments: currentInstruments)
        
        DispatchQueue.main.async { [weak self] in
            self?.view.reload()
            self?.updateStreamsIfNeeded()
        }
    }
}

//MARK: - ErrorPresentable
extension StocksPresenter: ErrorPresentable {
    func presentEnterPin(retryBody: @escaping () -> Void) {
        let recoverable = RecoverableError(retryAfterPin: retryBody)
        view.handleError(error: recoverable)
    }
    
    func presentErrorState(_ error: AppError) {
        isLoaded = false
        view.showLoadError(true)
        view.reload()
    }
}

// MARK: - StocksInteractorOutput
extension StocksPresenter: StocksInteractorOutput {
    func presentAll(instruments: [InstrumentBrief]) {
        initialInstruments = instruments
        switch selectedTab {
        case .bpif:
            currentCategoryInstruments = initialInstruments.filter { $0.commonType == .etf }
        case .stock:
            currentCategoryInstruments = initialInstruments.filter { (($0.commonType == .stock || $0.commonType == .foreignStock)) }
        case .bond:
            currentCategoryInstruments = initialInstruments.filter { (($0.commonType == .bond || $0.commonType == .foreignBond)) }
        }
        
        currentInstruments = currentCategoryInstruments
        
        updateCurrentInstrumentsForCurrentSorting()
        
        var freeValue: Double?
        if let value = portfolioLastResponse?.freeValue {
            freeValue = Double(value)
        }
        
        configurators = buildConfiguratorsFor(
            instruments: currentInstruments,
            portfolioFreeValue: freeValue
        )

        isLoaded = true
        view.reload()
        view.hidePeriod(hidden: false)
        updateStreamsIfNeeded()
    }
    
    func processPortfolio(lastResponse: Portfolio_Service_Commons_PortfolioResponse?) {
        portfolioLastResponse = lastResponse?.portfolio
    }

    func update(index: Int, result: Result<InstrumentBrief, Error>) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            switch result {
            case .success(let model):
                guard self.currentInstruments.indices.contains(index),
                        self.configurators.indices.contains(index) else { return }
                self.currentInstruments[index] = model
                
                self.configurators[index].data.update(
                    price: self.convert(model.price),
                    growth: self.getGrowthFrom(model: model, for: self.period)
                )
            case .failure:
                guard self.configurators.indices.contains(index) else { return }
                self.configurators[index].data.update(
                    price: nil,
                    growth: nil
                )
            }
        }
    }
}

// MARK: UISearchResultsUpdating
extension StocksPresenter: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let isEmptyText = searchController.searchBar.text?.isEmpty ?? true
        searchKey = isEmptyText ? nil : searchController.searchBar.text
        compoundSearch()
    }
}

// MARK: UITableViewDelegate, UITableViewDataSource
extension StocksPresenter: UITableViewDelegate, UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return isLoaded ? configurators.count : Constants.skeletonsCount
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return view.getTabsView(index: selectedTab.rawValue)
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.feedShareCell, for: indexPath)!
        cell.startAnimations(!isLoaded)
        isLoaded ? configurators[indexPath.row].item.configure(cell: cell) : nil
        return cell
    }
    
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        guard isLoaded else { return }
        view.onRowSelect(for: currentInstruments[indexPath.row],
                         type: .init(type: currentInstruments[indexPath.row].commonType))
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yOffset = scrollView.contentOffset.y
        let maxAvailableOffset = yOffset + scrollView.bounds.height
        if yOffset >= 0, yOffset < maxAvailableOffset {
            updateStreamsIfNeeded()
        }
        
        view.showPeriod(show: false)
        animationTimer?.invalidate()
        animationTimer = Timer.scheduledTimer(
            withTimeInterval: Constants.timerInterval,
            repeats: false
        ) { [weak self] _ in
            self?.view.showPeriod(show: true)
        }
        
    }
}

// MARK: Helpers
extension StocksPresenter {
    private func updateStreamsIfNeeded() {
        let visibleIndicies = view.getVisibleCellsIndices()
        guard isLoaded,
            let first = visibleIndicies.first,
            let last = visibleIndicies.last else { return }
        var topSideOffset = first - Constants.streamLineOffsetPerSide
        if topSideOffset < .zero { topSideOffset = .zero }
        var bottomSideOffset = last + Constants.streamLineOffsetPerSide
        if bottomSideOffset >= configurators.count { bottomSideOffset = configurators.count - 1 }

        let updateModels: [IndexedTicker] = (topSideOffset...bottomSideOffset).map { index in
            let ticker: String = (type == .obligation) || (type == .foreignObligation) ? currentInstruments[index].instrumentID : configurators[index].data.description
            return IndexedTicker(name: ticker, index: index)
        }
        interactor.getUpdatesFor(
            ticker: updateModels,
            type: type
        )
    }

    private func getGrowthFrom(model: InstrumentBrief, for period: FeedPeriod) -> Double {
        switch period {
        case .oneMonth:
            return convert(model.monthChange)
        case .threeMonth:
            return convert(model.threeMonthsChange)
        case .oneWeek:
            return convert(model.weekChange)
        case .oneYear:
            return convert(model.yearChange)
        case .threeYear:
            return convert(model.threeYearsChange)
        case .allTime:
            return convert(model.allTimeChange)
        case .oneDay:
            return convert(model.dayChange)
        }
    }

    private func convert(_ value: Iticapital_ApiMts_Type_Float) -> Double {
        return Double(value.value) / pow(10.0, Double(value.scale))
    }
}

//MARK: SearchController
extension StocksPresenter {
    func willPresentSearchController(_ searchController: UISearchController) {
        view.setTableViewBounces(false)
        view.searchWillAppear()
    }

    func willDismissSearchController(_ searchController: UISearchController) {
        view.setTableViewBounces(true)
        view.searchWillDisappear(type.title)
    }
}
