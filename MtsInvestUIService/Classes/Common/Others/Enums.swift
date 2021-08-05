//
//  Enums.swift
//  FinService
//
//  Created by Nikita Merkel on 29/12/2018.
//  Copyright © 2018 MTS IT. All rights reserved.
//

import UIKit

enum FundsEnum: String {
    case rubleBonds = "СМ"
    case rubleStocks = "ФА"
    case dollarBio = "БТ"
    case dollarBonds = "МВ"
    case dollarStocks = "АМ"
    case trustManagement = "ДУ"
    case rubleReserved = "ФР"
    case dollarReserved = "ВИ"
    
    var name: String {
        switch self {
        case .rubleBonds:
            return Strings.fundNameSM
        case .rubleStocks:
            return Strings.fundNameFA
        case .dollarBio:
            return Strings.fundNameBT
        case .dollarBonds:
            return Strings.fundNameMV
        case .dollarStocks:
            return Strings.fundNameAM
        default:
            return ""
        }
    }
    
    var image: UIImage {
        switch self {
        case .rubleBonds:
            return Assets.Images.iconRubleBonds.image
        case .rubleStocks:
            return Assets.Images.iconRubleStocks.image
        case .dollarBio:
            return Assets.Images.iconDollarBio.image
        case .dollarBonds:
            return Assets.Images.iconDollarBonds.image
        case .dollarStocks:
            return Assets.Images.iconDollarStocks.image
        case .trustManagement:
            return Assets.Images.iconTrustManagement.image
        case .rubleReserved:
            return Assets.Images.iconRubleReserve.image
        case .dollarReserved:
            return Assets.Images.iconDollarReserve.image
        }
    }
    
    var color: UIColor {
        switch self {
        case .rubleBonds:
            return .mtsDeepBlue
        case .rubleStocks:
            return .mtsRed
        case .dollarBio:
            return .mtsHospitalGreen
        case .dollarBonds:
            return .mtsGreyChateau
        case .dollarStocks:
            return .mtsSkyBlue
        case .trustManagement:
            return .black
        case .rubleReserved:
            return .mtsDustyOrange
        case .dollarReserved:
            return .mtsWarmPurple
        }
    }
}

enum CurrencyEnum: String, CaseIterable {
    case RUB = "RUB"
    case USD = "USD"
    case ALL_IN_RUB = "ALL_IN_RUB"
    
    var currencyCharacter: String {
        switch self {
        case .RUB,
             .ALL_IN_RUB:
            return "₽"
        case .USD:
            return "$"
        }
    }
    
    var title: String {
        switch self {
        case .RUB:
            return "Рублёвая часть"
        case .USD:
            return "Долларовая часть"
        case .ALL_IN_RUB:
            return "Все средства"
        }
    }
    
    var iconName: String {
        switch self {
        case .RUB:
            return "icon_rub_filter"
        case .USD:
            return "icon_usd_filter"
        case .ALL_IN_RUB:
            return "icon_all_filter"
        }
    }
    
    var yeldEquivalent: String {
        switch self {
        case .RUB:
            return "RUB"
        case .USD:
            return "USD"
        case .ALL_IN_RUB:
            return "TOTAL"
        }
    }
}

enum FundPeriod {
    case month1
    case month3
    case month6
    case year1
    case year3
    case year5
    case all
    
    var rawValue: String {
        switch self {
        case .month1:
            return Strings.DatePeriod.OneMonth.formattedText
        case .month3:
            return Strings.DatePeriod.ThreeMonth.formattedText
        case .month6:
            return Strings.DatePeriod.SixMonth.formattedText
        case .year1:
            return Strings.DatePeriod.OneYear.formatterText
        case .year3:
            return Strings.DatePeriod.ThreeYear.formattedText
        case .year5:
            return Strings.DatePeriod.FiveYears.formattedText
        case .all:
            return Strings.DatePeriod.AllTime.formattedText
        }
    }
    
    var index: Int {
        get {
            switch self {
            case .month1: return 0
            case .month3: return 1
            case .month6: return 2
            case .year1: return 3
            case .year3: return 4
            case .year5: return 5
            case .all: return 6
            }
        }
    }
    
    static func period(for index: Int) -> FundPeriod {
        if let periodIndex = PeriodIndex(rawValue: index) {
            return periodIndex.period
        } else {
            return .all
        }
    }
    
    static func period(for typeEnum: TypeEnum) -> FundPeriod {
        switch typeEnum {
        case .allTime:
            return .all
        case .the1Month:
            return .month1
        case .the1Year:
            return .year1
        case .the3Month:
            return .month3
        case .the3Year:
            return .year3
        case .the5Year:
            return .year5
        case .the6Month:
            return .month6
        }
    }
    
    func typeEnum() -> TypeEnum {
        switch self {
        case .all:
            return .allTime
        case .month1:
            return .the1Month
        case .month3:
            return .the3Month
        case .month6:
            return .the6Month
        case .year1:
            return .the1Year
        case .year3:
            return .the3Year
        case .year5:
            return .the5Year
        }
    }
    
    func downgrade() -> FundPeriod{
        switch self {
        case .all:
            return .all
        case .month1:
            return .month1
        case .month3:
            return .month1
        case .month6:
            return .month3
        case .year1:
            return .month6
        case .year3:
            return .year1
        case .year5:
            return .year3
        }
    }
	
	func dateEnumPeriod() -> DateEnum {
		switch self {
		case .all:
			return .allTime
		case .month1:
			return .oneMonth
		case .month3:
			return .threeMonth
		case .month6:
			return .sixMonth
		case .year1:
			return .oneYear
		case .year3:
			return .threeYear
		case .year5:
			return .fiveYears
		}
	}
    
    static func >=(left: FundPeriod, right: FundPeriod) -> Bool {
        return left.index >= right.index
    }
    
    static func <=(left: FundPeriod, right: FundPeriod) -> Bool {
        return left.index <= right.index
    }
    
    static func >(left: FundPeriod, right: FundPeriod) -> Bool {
        return left.index > right.index
    }
    
    static func <(left: FundPeriod, right: FundPeriod) -> Bool {
        return left.index < right.index
    }
    
    private enum PeriodIndex: Int {
        case month1 = 0
        case month3 = 1
        case month6 = 2
        case year1 = 3
        case year3 = 4
        case year5 = 5
        case all = 6
        
        var period: FundPeriod {
            get {
                switch self {
                case .month1:
                    return .month1
                case .month3:
                    return .month3
                case .month6:
                    return .month6
                case .year1:
                    return .year1
                case .year3:
                    return .year3
                case .year5:
                    return .year5
                case .all:
                    return .all
                }
            }
        }
    }
}


enum DateEnum: String, CaseIterable {
    case allTime = "allTime"
    case fiveYears = "_5Year"
    case threeYear = "_3Year"
    case oneYear = "_1Year"
    case sixMonth = "_6Month"
    case threeMonth = "_3Month"
    case oneMonth = "_1Month"
    
    var formattedText: String {
        switch self {
        case .oneMonth:
            return Strings.DatePeriod.OneMonth.formattedText
        case .threeMonth:
            return Strings.DatePeriod.ThreeMonth.formattedText
        case .sixMonth:
            return Strings.DatePeriod.SixMonth.formattedText
        case .oneYear:
            return Strings.DatePeriod.OneYear.formatterText
        case .threeYear:
            return Strings.DatePeriod.ThreeYear.formattedText
        case .fiveYears:
            return Strings.DatePeriod.FiveYears.formattedText
        case .allTime:
            return Strings.DatePeriod.AllTime.formattedText
        }
    }
   
    var title: String {
        switch self {
        case .allTime:
            return Strings.DatePeriod.AllTime.title
        case .oneMonth:
            return Strings.DatePeriod.OneMonth.title
        case .oneYear:
            return Strings.DatePeriod.OneYear.title
        case .threeMonth:
            return Strings.DatePeriod.ThreeMonth.title
        case .threeYear:
            return Strings.DatePeriod.ThreeYear.title
        case .fiveYears:
            return Strings.DatePeriod.FiveYears.title
        case .sixMonth:
            return Strings.DatePeriod.SixMonth.title
        }
    }
    
    var yeldEquivalent: String {
        switch self {
        case .allTime:
            return "A11"
        case .oneMonth:
            return "M01"
        case .oneYear:
            return "Y01"
        case .threeMonth:
            return "M03"
        case .threeYear:
            return "Y03"
        case .fiveYears:
            return "Y05"
        case .sixMonth:
            return "M06"
        }
    }
    
    init(feedPeriod: FeedPeriod){
        switch feedPeriod {
        case .allTime:
            self = .allTime
        case .threeYear:
            self = .threeYear
        case .oneYear:
            self = .oneYear
        case .threeMonth:
            self = .threeMonth
        case .oneMonth:
            self = .oneMonth
        case .oneWeek:
            self = .oneMonth
        case .oneDay:
            self = .oneMonth
        }
    }
}
