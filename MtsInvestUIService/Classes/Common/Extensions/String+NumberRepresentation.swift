//
//  String+NumberRepresentation.swift
//  FinService
//
//  Created by Nikolai Dovgan on 30.03.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import Foundation


extension String {
    
    public var removingNumberRepresentationGroupingSeparator: String {
        self.replace(string: String.numberRepresentationFormatter.groupingSeparator,
                     replacement: "")
    }
    
    public static func numberRepresentation(for number: Int,
                                            minimumFractionDigits: Int = 0,
                                            maximumFractionDigits: Int = 2,
                                            currencyCode: String? = nil,
                                            showPositiveSign: Bool = false,
                                            roundingMode: NumberFormatter.RoundingMode = .halfUp) -> String
    {
        return numberRepresentation(for: NSNumber(value: number),
                                    minimumFractionDigits: minimumFractionDigits,
                                    maximumFractionDigits: maximumFractionDigits,
                                    currencyCode: currencyCode,
                                    showPositiveSign: showPositiveSign,
                                    roundingMode: roundingMode)
    }

    public static func numberRepresentation(for number: Double,
                                            minimumFractionDigits: Int = 0,
                                            maximumFractionDigits: Int = 2,
                                            currencyCode: String? = nil,
                                            showPositiveSign: Bool = false,
                                            roundingMode: NumberFormatter.RoundingMode = .halfUp) -> String
    {
        return numberRepresentation(for: NSNumber(value: number),
                                    minimumFractionDigits: minimumFractionDigits,
                                    maximumFractionDigits: maximumFractionDigits,
                                    currencyCode: currencyCode,
                                    showPositiveSign: showPositiveSign,
                                    roundingMode: roundingMode)
    }

    public static func numberRepresentation(for number: NSNumber,
                                            minimumFractionDigits: Int = 0,
                                            maximumFractionDigits: Int = 2,
                                            currencyCode: String? = nil,
                                            showPositiveSign: Bool = false,
                                            roundingMode: NumberFormatter.RoundingMode = .halfUp) -> String
    {
        let formatter = numberRepresentationFormatter
        
        if (currencyCode != nil) {
            formatter.numberStyle = .currency
            formatter.currencyCode = currencyCode
        } else {
            formatter.numberStyle = .decimal
        }
        
        if (showPositiveSign) {
            formatter.positivePrefix = formatter.plusSign
        }
        
        if number.floatValue.truncatingRemainder(dividingBy: 1) == 0 {
            formatter.minimumFractionDigits = 0
        } else {
            formatter.minimumFractionDigits = minimumFractionDigits
        }
        
        formatter.roundingMode = roundingMode
        formatter.maximumFractionDigits = maximumFractionDigits

        return formatter.string(from: number) ?? ""
    }
    
    private static var numberRepresentationFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter
    }
}
