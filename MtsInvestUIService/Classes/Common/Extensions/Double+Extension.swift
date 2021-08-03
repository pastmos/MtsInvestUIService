//
//  Double+Extension.swift
//  FinService
//
//  Created by Rodion Baglay on 18/07/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation

extension Double {

    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self.rounded) ?? ""
    }

    var roundFormatted: String {
        return Formatter.roundedFormatter.string(for: self.rounded) ?? ""
    }

    var roundIfNeeded: String {
        if self.truncatingRemainder(dividingBy: 1) == 0 {
            return Formatter.roundedFormatter.string(for: self.rounded) ?? ""
        } else {
            return Formatter.withComma.string(for: self) ?? ""
        }
    }
    
    func rounded(toNearest: Double) -> Double {
        return (self / toNearest).round(to: 0) * toNearest
    }

    func asDecimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }

    func scaledBy(_ scale: UInt64) -> Double {
        return self / pow(10.0, Double(scale))
    }
    
    var toStringWithComma: String {
        let string = self == 0 ? "0" : String(self).replacingOccurrences(of: ".", with: ",")
        return string
    }
    
    var fractionDigitsCount: Int {
        if self == .zero {
            return 0
        }
        let numComponents = "\(self)".components(separatedBy: ".")
        return numComponents.last?.count ?? 0
    }
    
    var integerPart: Double {
        return Double(Int(self))
    }
    
    
    var fractionPart: Double {
        let fractionStr = "0.\(String(self).split(separator: ".")[1])"
        return Double(fractionStr)!
    }
    
    
    var fractionPartString: String {
        return "0.\(String(self).split(separator: ".")[1])"
    }
    
    
    var fractionPartInteger: Int {
        let strings = String(self).split(separator: ".")
        guard strings.count > 1 else {
            return 0
        }
        return Int("\(strings[1])")!
    }
    
}
