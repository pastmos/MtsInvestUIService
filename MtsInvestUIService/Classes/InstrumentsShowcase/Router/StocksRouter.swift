//
//  StocksStocksRouter.swift
//  finservice
//
//  Created by Semyon on 08/11/2019.
//  Copyright © 2019 FinService. All rights reserved.
//

import Foundation

protocol StocksRouterInterface {
    func presentSorting(activeOption: StocksSorting,
                        activeOptionDescending: Bool,
                        handler: @escaping (StocksSorting, Bool) -> Void)
    func presentPeriod(active: FeedPeriod, handler: @escaping (FeedPeriod) -> Void)
    func openStocksInstrument(for brief: InstrumentBrief, type: BrokerageInstrumentType, portfolioType: BrokeragePortfolioType)
}

class StocksRouter: StocksRouterInterface {
    weak var viewController: StocksViewController!
    
    func presentSorting(activeOption: StocksSorting,
                        activeOptionDescending: Bool,
                        handler: @escaping (StocksSorting, Bool) -> Void) {
        let optionCases = StocksSorting.allCases
        let controller = BottomSortController(options: optionCases.filter { $0 != .none },
                                              activeOption: activeOption,
                                              activeOptionDescending: activeOptionDescending)
        
        controller.onSelect = { [weak controller] sorting, isDescending in
            handler(sorting, isDescending)
            controller?.dismiss(animated: true)
        }
        
        viewController.present(controller, animated: true)
    }

    func presentPeriod(active: FeedPeriod, handler: @escaping (FeedPeriod) -> Void) {
        let dateCases = FeedPeriod.allCases.map { $0.formattedText }
        let controller = BottomDropController(dataSource: dateCases, activeItem: active.formattedText)

        controller.onSelectItem = { [weak controller] path in
            controller?.dismiss(animated: true)
            let selected = FeedPeriod.allCases[path.row]
            handler(selected)
        }

        viewController.present(controller, animated: true)
    }

    func openStocksInstrument(for brief: InstrumentBrief, type: BrokerageInstrumentType, portfolioType: BrokeragePortfolioType) {
        guard let navigation = viewController.navigationController else { return }
        let coordinator = InstrumentCoordinator(instrumentID: brief.instrumentID,
                                                type: type,
                                                portfolioType: portfolioType,
                                                navigation: navigation)
        coordinator.start()
    }
}
