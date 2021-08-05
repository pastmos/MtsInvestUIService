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
            return Strings.Brokerage.YieldPeriod.oneDay
        case .oneWeek:
            return Strings.Brokerage.YieldPeriod.oneWeek
        case .oneMonth:
            return Strings.Brokerage.YieldPeriod.oneMonth
        case .threeMonth:
            return Strings.Brokerage.YieldPeriod.threeMonths
        case .oneYear:
            return Strings.Brokerage.YieldPeriod.oneYear
        case .threeYear:
            return Strings.Brokerage.YieldPeriod.threeYears
        case .allTime:
            return Strings.Brokerage.YieldPeriod.allTime
        }
    }
}
