//
//  StocksSorting.swift
//  FinService
//
//  Created by Никита Елизаров on 14.02.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import Foundation


enum StocksSorting: CaseIterable {
    
    case none
    case alphabet
    case price
    case yield
    
    var title: String {
        switch self {
            case .none: return ""
            case .alphabet: return R.string.localizable.stocksSortAlphabet()
            case .price: return R.string.localizable.stocksSortPrice()
            case .yield: return R.string.localizable.stocksSortYield()
        }
    }
}
