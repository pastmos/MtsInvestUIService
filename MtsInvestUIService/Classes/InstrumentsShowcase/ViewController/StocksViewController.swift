//
//  StocksStocksViewController.swift
//  finservice
//
//  Created by Semyon on 08/11/2019.
//  Copyright © 2019 FinService. All rights reserved.
//

import UIKit
import MtsInvestGrpcService

final class StocksViewController: AnimatableViewController {
    // MARK: Constants
    private struct Constants {
        static let tableViewBottomInset: CGFloat = 66
        static let animationDuration: TimeInterval = 0.3
        static let animationDamping: CGFloat = 0.5
        static let animationVelocity: CGFloat = 0.5
        static let tabsHeight: CGFloat = 100
        static let tabsBottomSpace: CGFloat = -20
        static let estimatedHeaderHeight: CGFloat = 80
    }
    
    override var interceptingScrollView: UIScrollView? {
        return tableView
    }
    
    // MARK: External properties
    var presenter: StocksPresenterInterface!
    var router: StocksRouterInterface!
    var portfolioType: BrokeragePortfolioType!
    
    
    // MARK: Outlets
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var sortContainerView: UIView!
    @IBOutlet private var periodButton: UIButton!
    @IBOutlet private var sortDescriptorButton: UIButton!
    @IBOutlet private var errorView: LoadingErrorView!
    
    private var segmentedScroll: PageControllerScroll = PageControllerScroll()
    private var tabsView: UIView!
    
    private var search: UISearchController?
    
    override var screenName: String? {
        return Strings.Analytics.StocksViewController.screenName
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureErrorView()
        configureTableView()
        configureNavBar()
        configureSearchBar()
        configureSegmentedScroll()
        presenter.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.viewWillAppear?()
        
        guard isBeingPresented || !isMovingToParentViewController else { return }
        presenter.renewEvents()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter.prepareToResign()
    }
    
    //MARK: UI helpers
    private func configureErrorView() {
        errorView.onAction = reloadData
    }
    
    private func configureSearchBar() {
        search = UISearchController(searchResultsController: nil)
        search?.searchResultsUpdater = presenter
        search?.delegate = presenter
        search?.searchBar.backgroundColor = .white
        search?.searchBar.tintColor = .mtsDeepBlue
        search?.obscuresBackgroundDuringPresentation = false
        search?.dimsBackgroundDuringPresentation = false
        
        if #available(iOS 11.0, *) {
            navigationItem.searchController = search
            navigationItem.hidesSearchBarWhenScrolling = false
            if #available(iOS 13, *) {
            }else {
                search?.hidesNavigationBarDuringPresentation = false
            }
        } else {
            search?.searchBar.searchBarStyle = .minimal
            search?.hidesNavigationBarDuringPresentation = false
        }
    }
    
    private func configureNavBar() {
        (navigationController as? ClearNavigationController)?.isStatusBarLight = false
        guard let navBar = navigationController?.navigationBar else { return }
        
        navBar.prefersLargeTitles = true
        extendedLayoutIncludesOpaqueBars = true
        edgesForExtendedLayout = .top
        navigationItem.largeTitleDisplayMode = .always
    }
    
    private func configureTableView() {
        tableView.registerCell(FeedShareCell.self)
        tableView.registerCell(StocksCollectionCell.self)
        tableView.sectionHeaderHeight = UITableViewAutomaticDimension
        tableView.estimatedSectionHeaderHeight = Constants.estimatedHeaderHeight
        
        presenter.configureTableView(tableView)
    }
    
    private func configureSegmentedScroll() {
        let titles = [Strings.Brokerage.Bpif.title,
                      Strings.Stocks.title,
                      Strings.Obligations.title]
        let appearance: PageSegmentedControllerAppearance.HeaderAppearance = .init(segmentTitleFont: FontFamily.MTSSans.medium.font(size: 17),
                                                                                   segmentSelectedColor: Assets.Colors.textHeadline.color,
                                                                                   segmentUnselectedColor: Assets.Colors.textTertiary.color,
                                                                                   underlineColor: Assets.Colors.controlsPrimaryActive.color)
        segmentedScroll.configureFor(items: titles,
                                     font: appearance.segmentTitleFont,
                                     selectedColor: appearance.segmentSelectedColor,
                                     unselectedColor: appearance.segmentUnselectedColor,
                                     underlineColor: appearance.underlineColor) {[weak self] index in
            self?.presenter.handleSegmentSelection(index: index)
            self?.segmentedScroll.transitionTo(index: index, isSeparateScroll: true)
        }
        segmentedScroll.transitionTo(index: 0, isSeparateScroll: true)
        
        tabsView = UIView(frame: CGRect(x: .zero,
                                        y: .zero,
                                        width: UIScreen.main.bounds.width,
                                        height: Constants.tabsHeight))
        tabsView.backgroundColor = Assets.Colors.backgroundPrimary.color

        tabsView.addSubview(segmentedScroll)
        
        segmentedScroll.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(Constants.tabsBottomSpace)
        }
    }
    
    // MARK: Actions
    @objc private func selectSearch() {
        navigationItem.titleView = search?.searchBar
        search?.searchBar.becomeFirstResponder()
    }
    
    @IBAction private func periodButtonTapped() {
        presenter.selectPeriodAction()
    }
    
    @IBAction private func sortDescriptorButtonTapped() {
        presenter.selectSortingAction()
    }
    
    private func reloadData() {
        presenter.loadData()
    }
}

extension StocksViewController: StocksPresenterOutput {
    func updateType(_ type: StocksPresenter.InstrumentType) {
        configureNavigationBar(title: type.commonTitle,
                               preferredLargeTitle: true)
    }
    
    func searchWillAppear() {
        guard #available(iOS 11.0, *) else {
            navigationItem.rightBarButtonItem = nil
            return
        }
    }
    
    func searchWillDisappear(_ type: String) {
        guard #available(iOS 11.0, *) else {
            let searchButton = UIBarButtonItem(image: Assets.Images.icSearch.image,
                                               style: .done,
                                               target: self,
                                               action: #selector(selectSearch))
            navigationItem.rightBarButtonItem = searchButton
            search?.searchBar.resignFirstResponder()
            title = type
            navigationItem.titleView = nil
            return
        }
    }
    
    func reload() {
        tableView.reloadData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
        }
        }
        
    
    func showLoadError(_ show: Bool) {
        errorView.isHidden = !show
    }
    
    func dismissSearchController() {
        search?.searchBar.resignFirstResponder()
    }
    
    func presentPeriodSelection(selected: FeedPeriod) {
        router.presentPeriod(active: selected) { [weak self] period in
            self?.presenter.updatePeriod(period)
        }
    }
    
    func presentSortingOptions(selected: StocksSorting, isDescending: Bool) {
        router.presentSorting(activeOption: selected, activeOptionDescending: isDescending) { [weak self] sorting, isDescending in
            self?.presenter.updateSorting(sorting, isDescending: isDescending)
        }
    }
    
    func updatePeriodTitle(period: FeedPeriod) {
        let periodText = Strings.Feed.periodPrefix + period.formattedText.lowercased()
        periodButton.setTitle(periodText, for: .normal)
    }
    
    func getVisibleCellsIndices() -> [Int] {
        return tableView.indexPathsForVisibleRows?.map { $0.row } ?? []
    }
    
    func getTabsView(index: Int) -> UIView {
        return tabsView
    }
    
    func onRowSelect(for brief: INVInstrumentBrief, type: BrokerageInstrumentType) {
        let event: EventType = type == .stock
            ? .showcase_open_stock_instrument
            : .showcase_open_bonds_instrument
        
        router.openStocksInstrument(for: brief, type: type, portfolioType: portfolioType)
    }
    
    func hidePeriod(hidden: Bool) {
//        tableView.contentInset.bottom = hidden ? .zero : Constants.tableViewBottomInset
        sortContainerView.isHidden = hidden
    }
    
    func showPeriod(show: Bool) {
        guard viewIfLoaded?.window != nil else { return }
        
        let transform = show
            ? .identity
            : CGAffineTransform(translationX: .zero, y: Constants.tableViewBottomInset)

        UIView.animate(withDuration: Constants.animationDuration,
                       delay: .zero,
                       usingSpringWithDamping: Constants.animationDamping,
                       initialSpringVelocity: Constants.animationVelocity,
                       animations: { [weak self] in
                        self?.sortContainerView.transform = transform
        })
    }
    
    func setTableViewBounces(_ bounces: Bool) {
        tableView.bounces = bounces
    }
}

