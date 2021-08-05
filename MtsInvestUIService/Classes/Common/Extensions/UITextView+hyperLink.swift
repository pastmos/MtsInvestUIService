//
//  UITextView+hyperLink.swift
//  FinService
//
//  Created by Никита Елизаров on 14.01.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

extension UITextView {
    
    func hyperLink(originalText: String, hyperLink: String, urlString: String, attributes: [NSAttributedString.Key: Any]) {
        let attributedOriginalText = NSMutableAttributedString(string: originalText)
        let linkRange = attributedOriginalText.mutableString.range(of: hyperLink)
        let fullRange = NSMakeRange(0, attributedOriginalText.length)
        attributedOriginalText.addAttributes(attributes, range: fullRange)
        attributedOriginalText.addAttribute(.link, value: urlString, range: linkRange)
        
        self.attributedText = attributedOriginalText
    }
    
    func setAttributedTextWith(text: String, linkText: String, linkURLString: String) {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = textAlignment
        
        let attributes: [NSAttributedString.Key : Any] = [
            .font: self.font ?? FontFamily.MTSSans.regular.font(size: UIFont.systemFontSize),
            .foregroundColor: self.textColor ?? .mtsDeepBlue,
            .paragraphStyle: paragraphStyle
        ]
        
        hyperLink(originalText: text,
                  hyperLink: linkText,
                  urlString: linkURLString,
                  attributes: attributes)
    }
}
