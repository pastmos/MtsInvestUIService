//
//  NSAttributedString+Extension.swift
//  FinService
//
//  Created by Максуд Даудов on 10.10.2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation
import UIKit

extension NSAttributedString {
    struct Constants {
        static let pifPercentThreshold = 5.0
    }
    
    class func attributedValue(for value: Double?,
                               integerColor: UIColor = .mtsDeepBlue,
                               fractionalColor: UIColor = .mtsBattleshipGrey,
                               integerFont: UIFont = .mtsSansMedium(size: 17),
                               fractionalFont: UIFont = .mtsSansRegular(size: 17),
                               minimumKeepingFractionDigits: Int? = nil,
                               maximumFractionDigits: Int? = nil,
                               appendPlusSign: Bool = false) -> NSAttributedString? {
        guard let value = value else {
            return NSAttributedString(string: "-", attributes: [.font: integerFont,
                                                                .foregroundColor: integerColor])
        }
        
        var minimumFractionDigits = 0
        if value < 1 && value != 0 {
            minimumFractionDigits = value.fractionDigitsCount
        }else if value > 1 && value.truncatingRemainder(dividingBy: 1) != 0 {
            minimumFractionDigits = minimumKeepingFractionDigits ?? 0
        }
        
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.currencyDecimalSeparator = ","
        formatter.numberStyle = .currency
        formatter.currencySymbol = ""
        formatter.minimumFractionDigits = minimumFractionDigits
        formatter.positivePrefix = appendPlusSign ? "+ " : ""
        if let `maximumFractionDigits` = maximumFractionDigits {
            formatter.maximumFractionDigits = maximumFractionDigits
        }
        guard var valueString = formatter.string(from: NSNumber(value: value)) else {
            return nil
        }
        
        valueString = valueString.trimmingCharacters(in: .whitespaces)
        
        let components = valueString.components(separatedBy: ",")
        guard let integerPart = components.first else { return nil }
        let attributedResult = NSMutableAttributedString(string: integerPart, attributes: [.foregroundColor: integerColor,
                                                                                           .font: integerFont])
        if components.count > 1, let fractionalPart = components.last {
            let fractionalText = "," + fractionalPart
            let attributedSecond = NSAttributedString(string: fractionalText,
                                                      attributes: [.foregroundColor: fractionalColor,
                                                                   .font: fractionalFont])
            attributedResult.append(attributedSecond)
        }
        
        return NSAttributedString(attributedString: attributedResult)
    }
    
    class func attributedValue(for value: Double?,
                               currency: Currency,
                               integerColor: UIColor = .mtsDeepBlue,
                               fractionalColor: UIColor = .mtsBattleshipGrey,
                               currencyColor: UIColor = .mtsDeepBlue,
                               integerFont: UIFont = .mtsSansMedium(size: 17),
                               fractionalFont: UIFont = .mtsSansRegular(size: 17),
                               minimumKeepingFractionDigits: Int? = nil,
							   maximumFractionDigits: Int? = nil,
                               appendPlusSign: Bool = false) -> NSAttributedString? {
        guard let attributedValue = attributedValue(for: value,
                                                    integerColor: integerColor,
                                                    fractionalColor: fractionalColor,
                                                    integerFont: integerFont,
                                                    fractionalFont: fractionalFont,
                                                    minimumKeepingFractionDigits: minimumKeepingFractionDigits,
													maximumFractionDigits: maximumFractionDigits,
                                                    appendPlusSign: appendPlusSign) else {
            return nil
        }
        
        let result = NSMutableAttributedString()
        result.append(attributedValue)
        if let _ = value {
            let currencyAttributed = NSAttributedString(string: " \(currency.currencyCharacter)",
                                                        attributes: [.foregroundColor: currencyColor,
                                                                     .font: fractionalFont])
            result.append(currencyAttributed)
        }
        return result
    }
    
    class func fundProfit(growthAbs: Double,
                          growthProc: Double?,
                          currencyChar: String = "",
                          period: String,
                          isPif: Bool = false,
                          rounding: Int = 2) -> NSAttributedString? {
        var stringValue = growthAbs.formatWithRound(round: rounding) + " \(currencyChar)"
        var percentStringValue: String = ""
        if let growthProc = growthProc {
            
            var percentValueNumber: NSNumber
            
            if abs(growthProc) > Constants.pifPercentThreshold {
                percentValueNumber = NSNumber(value: abs(growthProc.round(to: 1)))
            } else {
                percentValueNumber = NSNumber(value: abs(growthProc.round(to: 2)))
            }
            
            guard let value = Formatter.withComma.string(from: percentValueNumber) else {
                return nil
            }
            
            percentStringValue = value
        }
        
        var color: UIColor = .mtsDeepBlue
        var image: UIImage?
        var sign = "+"
        if growthAbs > 0 {
            color = .mtsAlgaeGreen
            image = R.image.icArrowUp()
        } else if growthAbs < 0 {
            color = .mtsRed
            image = R.image.icArrowDown()
            stringValue.removeFirst()
            sign = "-"
        }
        
        if #available(iOS 13.0, *) {} else {
            image = image?.tint(with: color)
        }
        
        let fullString = NSMutableAttributedString()
        var hasImage = false
        if let image = image {
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = image
            let imageString = NSAttributedString(attachment: imageAttachment)
            fullString.append(imageString)
            fullString.append(NSAttributedString(string: " "))
            hasImage = true
        }
        
        let periodTextProfit = NSAttributedString(string: period,
                                                  attributes: [.font: UIFont.mtsSansRegular(size: 14), .foregroundColor: UIColor.mtsBattleshipGrey])
        
        let appendingLenght = hasImage ? 1 : 0
        
        if growthProc != nil {
            let growthAbsProfit = NSAttributedString(string: "\(stringValue)")
            let growthProcProfit = NSAttributedString(string: " (\(sign)\(percentStringValue)%) ")
            fullString.append(growthAbsProfit)
            fullString.append(growthProcProfit)
            fullString.addAttributes([.font: UIFont.mtsSansRegular(size: 14),
                                      .foregroundColor: color],
                                     range: NSMakeRange(0, appendingLenght + growthAbsProfit.length + growthProcProfit.length))
        } else {
            let growthAbsProfit = NSAttributedString(string: "\(stringValue) ")
            fullString.append(growthAbsProfit)
            fullString.addAttributes([.font: UIFont.mtsSansRegular(size: 14),
                                      .foregroundColor: color],
                                     range: NSMakeRange(0, appendingLenght + growthAbsProfit.length))
        }
        
        fullString.append(periodTextProfit)
        
        return fullString
    }
    
    class func profit(for value: Double?,
                      formatedValue: String? = nil,
                      mantissaRound: Int? = nil,
                      format1Or2Digits: Bool = false,
                      isPif: Bool = false,
                      font: UIFont = .mtsSansRegular(size: 14),
                      positiveColor: UIColor = .mtsAlgaeGreen,
                      negativeColor: UIColor = .mtsRed,
                      neutralColor: UIColor = .mtsDeepBlue,
                      nilValuePlaceholder: String = "-",
                      showImage: Bool = true) -> NSAttributedString? {
        guard let value = value else {
            return NSAttributedString(string: nilValuePlaceholder,
                                      attributes: [.font: font,
                                                   .foregroundColor: neutralColor])
        }
        
        var valueNumber = NSNumber(value: abs(value))
        
        if let `mantissaRound` = mantissaRound {
            valueNumber = NSNumber(value: abs(value.round(to: mantissaRound)))
        }

        if format1Or2Digits {
            valueNumber = NSNumber(value: abs(value.round1Or2Digits))
        }

        if isPif && abs(value) <= Constants.pifPercentThreshold {
            valueNumber = NSNumber(value: abs(value.round(to: 2)))
        }
        
        var stringValue: String
        if let `formatedValue` = formatedValue {
            stringValue = formatedValue
        } else if valueNumber.doubleValue >= 1 {
            guard let string = Formatter.withComma.string(from: valueNumber) else {
                return nil
            }
            stringValue = string
        } else {
            stringValue = valueNumber == 0 ? "0" : "\(valueNumber.doubleValue)"
        }
        var color: UIColor = neutralColor
        var image: UIImage?
        if value > 0 {
            color = positiveColor
            image = R.image.icArrowUp()
        } else if value < 0 {
            color = negativeColor
            image = R.image.icArrowDown()
        }
        
        if #available(iOS 13.0, *) {} else {
            image = image?.tint(with: color)
        }
        
        let fullString = NSMutableAttributedString()
        
        if let image = image, showImage {
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = image
            let imageString = NSMutableAttributedString(attachment: imageAttachment)
            imageString.addAttributes([.baselineOffset: 1],
                                      range: NSRange(location: 0, length: imageString.length))
            fullString.append(imageString)
            fullString.append(NSAttributedString(string: " "))
        }
        
        let profitValue = NSAttributedString(string: "\(stringValue) %")
        fullString.append(profitValue)
        
        fullString.addAttributes([.font: font,
                                  .foregroundColor: color],
                                 range: NSMakeRange(0, fullString.length))
        return fullString
    }
    
    class func formRange(startValue: Double, endValue: Double, currency: Currency) -> NSAttributedString? {
        guard let first = NSAttributedString.attributedValue(for: startValue, currency: currency),
            let last = NSAttributedString.attributedValue(for: endValue, currency: currency) else {
            return nil
        }
        let separator = NSAttributedString(string: " - ", attributes: [.foregroundColor: UIColor.black])
        
        let temp = first.mutableCopy() as? NSMutableAttributedString
        temp?.append(separator)
        temp?.append(last)
        return temp
    }
    
    class func formColoredProfit(value: Double, size: CGFloat = 14.0) -> NSAttributedString? {
        let valueString = String(describing: value)
        
        let color: UIColor = value >= 0 ? .mtsDarkMint : .mtsRed
        let font: UIFont = .mtsSansRegular(size: size)
        
        return NSAttributedString(string: valueString, attributes: [.foregroundColor: color, .font: font])
    }
    
    func attributedStringWithResizedImages(with maxWidth: CGFloat) -> NSAttributedString {
        let text = NSMutableAttributedString(attributedString: self)
        text.enumerateAttribute(NSAttributedString.Key.attachment, in: NSMakeRange(0, text.length), options: .init(rawValue: 0), using: { value, range, _ in
            if let attachement = value as? NSTextAttachment {
                let image = attachement.image(forBounds: attachement.bounds, textContainer: NSTextContainer(), characterIndex: range.location)!
                if image.size.width > maxWidth {
                    let newImage = image.resizeImage(scale: maxWidth / image.size.width)
                    let newAttribut = NSTextAttachment()
                    newAttribut.image = newImage
                    text.addAttribute(NSAttributedString.Key.attachment, value: newAttribut, range: range)
                }
            }
        })
        return text
    }
    
    class func numberRepresentation(for number: NSNumber,
                                    minimumFractionDigits: Int = 0,
                                    maximumFractionDigits: Int = 2,
                                    currencyCode: String? = nil,
                                    showPositiveSign: Bool = false,
                                    roundingMode: NumberFormatter.RoundingMode = .halfUp,
                                    integerColor: UIColor,
                                    fractionColor: UIColor,
                                    integerFont: UIFont,
                                    fractionFont: UIFont) -> NSAttributedString? {
        let numberString = String.numberRepresentation(for: number,
                                                       minimumFractionDigits: minimumFractionDigits,
                                                       maximumFractionDigits: maximumFractionDigits,
                                                       currencyCode: currencyCode,
                                                       showPositiveSign: showPositiveSign,
                                                       roundingMode: roundingMode)
        
        guard !numberString.isEmpty else {
            return nil
        }
        
        let decimalSeparator = Locale(identifier: "ru_RU").decimalSeparator!
        let components = numberString.components(separatedBy: decimalSeparator)
        
        let integerPart = components.first ?? numberString
        
        let attributedString = NSMutableAttributedString(string: integerPart,
                                                         attributes: [.foregroundColor: integerColor,
                                                                      .font: integerFont])
        
        
		if components.count > 1,
           let fractionPart = components.last {
            let decimalSeparatorAttributedString = NSMutableAttributedString(string: decimalSeparator,
                                                              attributes: [.foregroundColor: integerColor,
                                                                           .font: fractionFont])
            attributedString.append(decimalSeparatorAttributedString)
            
            let fractionWithCurrencyAttributedString = NSMutableAttributedString(string: fractionPart,
															  attributes: [.foregroundColor: integerColor,
																		   .font: fractionFont])
            
            let fractionPartWithoutCurrency = fractionPart.trimmingCharacters(in: CharacterSet(charactersIn: "0123456789.").inverted)
            if let range = fractionPart.range(of: fractionPartWithoutCurrency) {
                let nsRange = NSRange(range, in: fractionPart)
                fractionWithCurrencyAttributedString.setAttributes([.foregroundColor: fractionColor,
                                                                .font: fractionFont], range: nsRange)
            }
			attributedString.append(fractionWithCurrencyAttributedString)
		}
        
        return NSAttributedString(attributedString: attributedString)
    }
    
    func rangeOf(string: String) -> Range<String.Index>? {
        self.string.range(of: string)
    }
    
    func rangeOf(string: String) -> NSRange? {
        return NSString(string: self.string).range(of: string, options: String.CompareOptions.caseInsensitive)
    }
    
    static func + (left: NSAttributedString, right: NSAttributedString) -> NSAttributedString
    {
        let result = NSMutableAttributedString()
        result.append(left)
        result.append(right)
        return result
    }
}
