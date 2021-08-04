//
//  String+Extension.swift
//  FinService
//
//  Created by Rodion Baglay on 18/07/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation
import UIKit

extension String {
    static func isEmpty(_ string: String?) -> Bool {
        string == nil || string!.isEmpty
    }
    
    func replace(string: String, replacement: String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: NSString.CompareOptions.literal, range: nil)
    }
    
    func removeWhitespace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    var replaceDotWithComma: String {
        replace(string: ".", replacement: ",")
    }
    
    var replaceCommaWithDot: String {
        replace(string: ",", replacement: ".")
    }
    
    var dateValue: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        guard let date = dateFormatter.date(from: self) else {
            return Date()
        }
        return date
    }
    
    func removingNonDigits() -> String {
        let digitSet = CharacterSet.decimalDigits.inverted
        
        let string = self.components(separatedBy: digitSet).joined(separator: "")
        
        return string
    }
    
    func normalizeStartingEight() -> String{
        var temp = self.removingNonDigits()
        if temp.hasPrefix("7"){
            temp = "8\(temp.dropFirst())"
        }
        return temp
    }
    
    func convertToJSONType() -> [String: Any]? {
        guard let data = self.data(using: .utf8) else { return nil }
        
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    
    func calculateHeightWith(width: CGFloat, font: UIFont) -> CGFloat {
        let size = CGSize(width: width, height: .greatestFiniteMagnitude)
        return self.calculateFor(size: size, font: font).height
    }
    
    func calculateWidthWith(height: CGFloat, font: UIFont) -> CGFloat {
        let size = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        return self.calculateFor(size: size, font: font).width
    }
    
    private func calculateFor(size: CGSize, font: UIFont) -> CGRect {
        return NSString(string: self).boundingRect(with: size,
                                                   options: [.usesLineFragmentOrigin,
                                                             .usesFontLeading],
                                                   attributes: [.font: font],
                                                   context: nil)
    }
    
    func add(color: UIColor) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: [.foregroundColor: color])
    }
    
    var asDecimalNumberWithRuLocale: NSDecimalNumber? {
        let number = NSDecimalNumber(string: self, locale: Locale(identifier: "ru_RU"))
        guard number != .notANumber else {
            return nil
        }
        
        return number
    }
    
    var asDecimalNumberWithPosixLocale: NSDecimalNumber? {
        let number = NSDecimalNumber(string: self, locale: Locale(identifier: "en_US_POSIX"))
        guard number != .notANumber else {
            return nil
        }
        
        return number
    }
    
    func removeExtraSpaces() -> String {
        return replacingOccurrences(of: "[\\s\n]+", with: " ", options: .regularExpression, range: nil)
    }
}
