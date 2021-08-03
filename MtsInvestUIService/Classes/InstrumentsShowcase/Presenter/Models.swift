//
//  Models.swift
//  FinService
//
//  Created by Semyon on 11/22/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation
import MtsInvestGrpcService

private typealias SharesConfigurator = TableCellConfigurator<FeedShareCell, FeedShareViewModel>

enum BrokerageInstrumentType: CaseIterable {
    case stock
    case obligation
    case bpif
    case other
	case currency
	case foreignObligation
	case foreignStock
    
    init(type: INVInstrumentCommonType) {
        switch type {
        case .stock:
            self = .stock
        case .bond:
            self = .obligation
        case .etf:
            self = .bpif
		case .currency:
			self = .currency
		case .foreginBond:
			self = .foreignObligation
		case .foreignStock:
			self = .foreignStock
        default:
            self = .other
        }
    }
}
    
extension BrokerageInstrumentType {
    var title: String {
        switch self {
        case .stock:
            return R.string.localizable.stocksTitle()
        case .obligation:
            return R.string.localizable.obligationsTitle()
        case .bpif:
            return R.string.localizable.brokerageBPIFTitle()
		case .foreignStock:
			return R.string.localizable.feedForeignStocksTitle()
		case .foreignObligation:
			return R.string.localizable.feedForeignBondsTitle()
        default:
            return R.string.localizable.othersTitle()
        }
    }
    
    var commonTitle: String {
        switch self {
        case .stock, .foreignStock:
            return R.string.localizable.stocksTitle()
        case .obligation, .foreignObligation:
            return R.string.localizable.obligationsTitle()
        case .bpif:
            return R.string.localizable.brokerageBPIFTitle()
        default:
            return R.string.localizable.othersTitle()
        }
    }
    
    var commonType: INVInstrumentCommonType {
        switch self {
        case .stock:
            return .stock
        case .obligation:
            return .bond
        case .bpif:
            return .etf
		case .foreignStock:
			return .foreignStock
		case .foreignObligation:
			return .foreginBond
        default:
            return .other
        }
    }
}


final class IndexedTicker {
    let name: String
    let index: Int
    
    required init(name: String,
                  index: Int) {
        self.name = name
        self.index = index
    }
}


final class StocksHolder {
    let item: CellConfigurator
    let data: FeedShareViewModel
    
    required init(data: FeedShareViewModel) {
        self.data = data
        item = SharesConfigurator(item: data)
    }
}


enum BrokeragePortfolioType: String {
    case iti = "BROKER_ITI"
    case mts = "BROKER_MTSB"
    
    var associatedKeys: [String : String] {
        switch self {
        case .mts:
            return ["provider" : "bank"]
        default:
            return [:]
        }
    }
}
