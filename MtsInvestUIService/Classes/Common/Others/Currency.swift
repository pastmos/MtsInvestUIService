//
//  Currency.swift
//  FinService
//
//  Created by Дмитрий on 03.10.17.
//  Copyright © 2017 MTS IT. All rights reserved.
//

import UIKit
import MtsInvestGrpcService

enum Currency: String {
    case multi = ""
    case rub = "RUB"
    case rur = "RUR"
    case usd = "USD"
    case eur = "EUR"
    
    var sign: String {
        return "Currency.\(rawValue).Sign".localized
    }
    
    init(portfolioCurrency: Int) {
        switch portfolioCurrency {
        case 0: self = .rub
        case 1: self = .usd
        case 2: self = .rur
        case 3: self = .eur
        default:
            self = .multi
        }
    }
    
    init(currencyEnum: CurrencyEnum) {
        switch currencyEnum {
        case .ALL_IN_RUB,
             .RUB:
            self = .rub
        case .USD:
            self = .usd
        }
    }
	
	init(grpcCurrency: INVCurrency) {
        
		switch grpcCurrency {
		case .rub:
			self = .rub
        case .eur:
			self = .eur
        case .usd:
			self = .usd
		default:
			self = .multi
		}
	}
    
    init(sign: String) {
        switch sign {
        case "₽":
            self = .rub
        case "$":
            self = .usd
        case "€":
            self = .eur
        default:
            self = .multi
        }
    }
    
    var currencyCharacter: String {
        switch self {
        case .rub,
             .rur:
            return Strings.Currency.Rub.sign
        case .usd:
            return Strings.Currency.Usd.sign
        case .eur:
            return Strings.Currency.Eur.sign
        default:
            return ""
        }
    }
    
    var name: String {
        switch self {
        case .multi:
            return ""
        case .rub:
            return Strings.Currency.Rub.name
        case .rur:
            return Strings.Currency.Rur.name
        case .usd:
            return Strings.Currency.Usd.name
        case .eur:
            return Strings.Currency.Eur.name
        }
    }
    
    var feedImage: UIImage? {
        switch self {
        case .multi:
            return nil
        case .rub,
             .rur:
            return Assets.Images.icRubGrey.image
        case .usd:
            return Assets.Images.icUsdGrey.image
        case .eur:
            return Assets.Images.icEurGrey.image
        }
    }
	
	var countryImage: UIImage? {
		switch self {
		case .eur:
			return Assets.Images.icEuFlag.image
		case .rub:
			return Assets.Images.icRfFlag.image
		case .usd:
			return Assets.Images.icUsFlag.image
		default: return nil
		}
	}
    
    var nameForCount: String {
        switch self {
        case .multi:
            return ""
        case .rub:
            return Strings.Currency.Rub.nameCount
        case .rur:
            return Strings.Currency.Rur.nameCount
        case .usd:
            return Strings.Currency.Usd.nameCount
        case .eur:
            return Strings.Currency.Eur.nameCount
        }
    }
    
    var fullName: String {
        switch self {
        case .multi:
            return ""
        case .rub:
            return Strings.Currency.Rub.fullName
        case .rur:
            return Strings.Currency.Rur.fullName
        case .usd:
            return Strings.Currency.Usd.fullName
        case .eur:
            return Strings.Currency.Eur.fullName
        }
    }
	
	var sortIndex: Int {
		switch self {
		case .rub:
			return 1
		case .usd:
			return 2
		case .eur:
			return 3
		case .rur:
			return 4
		case .multi:
			return 5
		}
	}
	
	static func <(lhs: Currency, rhs: Currency) -> Bool {
		return lhs.sortIndex < rhs.sortIndex
	}
	
}
