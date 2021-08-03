//
//  FeedPeriod.swift
//  FinService
//
//  Created by Semyon on 11/15/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation

enum FeedPeriod: Int, CaseIterable {
    case oneDay = 101
    case oneWeek = 202
    case oneMonth = 301
    case threeMonth = 303
    case oneYear = 401
    case threeYear = 403
    case allTime = 0
    
    var formattedText: String {
        switch self {
        case .oneMonth:
            return "1 месяц"
        case .threeMonth:
            return "3 месяца"
        case .oneWeek:
            return "Неделя"
        case .oneYear:
            return "Год"
        case .threeYear:
            return "3 года"
        case .allTime:
            return "Все время"
        case .oneDay:
            return "День"
        }
    }
    
    var brokerageYieldButtonText: String {
        switch self {
        case .oneDay:
            return R.string.localizable.brokerageYieldPeriodOneDay()
        case .oneWeek:
            return R.string.localizable.brokerageYieldPeriodOneWeek()
        case .oneMonth:
            return R.string.localizable.brokerageYieldPeriodOneMonth()
        case .threeMonth:
            return R.string.localizable.brokerageYieldPeriodThreeMonths()
        case .oneYear:
            return R.string.localizable.brokerageYieldPeriodOneYear()
        case .threeYear:
            return R.string.localizable.brokerageYieldPeriodThreeYears()
        case .allTime:
            return R.string.localizable.brokerageYieldPeriodAllTime()
        }
    }
}
