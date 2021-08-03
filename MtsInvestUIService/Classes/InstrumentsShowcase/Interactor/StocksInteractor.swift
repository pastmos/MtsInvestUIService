//
//  StocksStocksInteractor.swift
//  finservice
//
//  Created by Semyon on 08/11/2019.
//  Copyright © 2019 FinService. All rights reserved.
//

import Foundation

protocol StocksInteractorInterface {
    var portfolioType: BrokeragePortfolioType { get set }
    
    func loadData(
        type: [BrokerageInstrumentType],
        filters: [String]?
    )
    func getUpdatesFor(
        ticker: [IndexedTicker],
        type: BrokerageInstrumentType
    )
    func prepareToResign()
}

protocol StocksInteractorOutput: ErrorPresentable {
    func presentAll(instruments: [InstrumentBrief])
    func processPortfolio(lastResponse: Portfolio_Service_Commons_PortfolioResponse?)
    func update(index: Int, result: Result<InstrumentBrief, Error>)
}

final class StocksInteractor {
    private final class StockWithInstrumentWrapper {
        let ticker: IndexedTicker
        let instrumentStream: StockInstrumentBriefStreamer
        
        init(
            ticker: IndexedTicker,
            stream: StockInstrumentBriefStreamer
        ) {
            self.ticker = ticker
            self.instrumentStream = stream
        }
    }
    
    //MARK: External properties
    weak var output: StocksInteractorOutput!
    var portfolioType: BrokeragePortfolioType = .mts
    
    private let instrumentsService: IBriefInstrumentsService
    private let portfolioStreamer: ITIBrokerPortfolioStreamer
    private let mtsPortfolioStreamer: MTSBrokerPortfolioStreamer
    private let appStreamService: ApplicationStreamsService
    private var stockStreamWrappers: [StockWithInstrumentWrapper]
    
    //MARK: - Initialization
    init(
        instrumentsService: IBriefInstrumentsService,
        portfolioStreamer: ITIBrokerPortfolioStreamer,
        mtsPortfolioStreamer: MTSBrokerPortfolioStreamer,
        appStreamService: ApplicationStreamsService
    ) {
        self.instrumentsService = instrumentsService
        self.portfolioStreamer = portfolioStreamer
        self.mtsPortfolioStreamer = mtsPortfolioStreamer
        self.appStreamService = appStreamService
        self.stockStreamWrappers = .init()
    }
}

//MARK: - StocksInteractorInterface
extension StocksInteractor: StocksInteractorInterface {
    func loadData(
        type: [BrokerageInstrumentType],
        filters: [String]?
    ) {
        instrumentsService.getBreifInstruments(
            types: type,
            filter: filters,
            completion: { [weak self] result in
                switch result {
                case .failure(let e):
                    self?.output.presentError(e, retryBody: { [weak self] in
                        self?.loadData(type: type, filters: filters)
                    })
                case .success(let instruments):
                    self?.output.presentAll(instruments: instruments)
                }
            }
        )
    }
    
    func getUpdatesFor(
        ticker: [IndexedTicker],
        type: BrokerageInstrumentType
    ) {
        var tickerCopy = ticker
        stockStreamWrappers.removeAll(where: { item in
            let isContains = tickerCopy.contains(where: { $0.name == item.ticker.name })
            if isContains {
                tickerCopy.removeAll(where: {$0.name == item.ticker.name})
            } else {
                item.instrumentStream.destroy()
            }
            return !isContains
        })
        
        for item in tickerCopy {
            let briefStream = StockInstrumentBriefStreamer(
                domain: "https://api-dev.mts.investments",
                ticker: item.name,
                instrumentType: type
            )
            let wrapper = StockWithInstrumentWrapper(
                ticker: item,
                stream: briefStream
            )
            briefStream.observable.subscribe(
                self,
                event: { [weak self] event in
                    let tickerIndex = wrapper.ticker.index
                    switch event {
                    case .failure(let e):
                        self?.output.update(index: tickerIndex, result: .failure(e))
                    case .success(let brief):
                        guard let object = brief else { return }
                        self?.output.update(index: tickerIndex, result: .success(object))
                    }
                }
            )
            briefStream.start()
            appStreamService.add(stocksBriefStream: briefStream)
            stockStreamWrappers.append(wrapper)
        }
    }
    
    func prepareToResign() {
        mtsPortfolioStreamer.observable.unSubscribe(self)
        portfolioStreamer.observable.unSubscribe(self)
        appStreamService.destroyAllStocksBrief()
        stockStreamWrappers.removeAll()
    }
}
