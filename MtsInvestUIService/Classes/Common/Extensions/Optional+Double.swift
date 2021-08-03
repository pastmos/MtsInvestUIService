//
//  Optional+Double.swift
//  FinService
//
//  Created by Nikita Merkel on 08/12/2018.
//  Copyright © 2018 MTS IT. All rights reserved.
//

import Foundation

extension Optional where Wrapped == Double {
    public var format: String {
        guard let number = self else { return "0" }
        
        let price = number.rounded as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: price) ?? "0"
    }
}

extension Double {
    
    public var format1Or2Digits: String {
        if abs(self) > 5 {
            return self.round(to: 1).format
        } else {
            return self.round(to: 2).format
        }
    }
    
    public var format: String {
        let price = self.rounded as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: price) ?? "0"
    }
    
    public var format4Digits: String {
        let price = self.round4Digits as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 4
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: price) ?? "0"
    }
    
    public var format5Digits: String {
        let price = self.round5Digits as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 5
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: price) ?? "0"
    }
    
    public var round4Digits: Double {
        let divisor = pow(10.0, Double(4))
        return (self * divisor).rounded(.down) / divisor
    }
    
    public var round5Digits: Double {
        return self.round(to: 5)
    }
    
    public var rounded: Double {
        return self.round(to: 2)
    }
    
    public var round1Or2Digits: Double {
        if abs(self) > 5 {
            return self.round(to: 1)
        } else {
            return self.round(to: 2)
        }
    }
    
    public func formatTo(digits: Int) -> String {
        let rounded = self.round(to: digits) as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = digits
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: rounded) ?? "0"
    }
    
    func formatWithRound(round: Int, forceRounding: Bool = true) -> String {
        let price = self.round(to: round) as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        if forceRounding {
            formatter.minimumFractionDigits = round
        }
        
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: price) ?? "0"
    }
    
    func round(to signsAfterPoint: Int) -> Double {
        let divisor = pow(10.0, Double(signsAfterPoint))
        return (self * divisor).rounded() / divisor
    }
}
