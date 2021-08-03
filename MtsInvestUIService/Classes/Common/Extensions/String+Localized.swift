//
//  String+Localized.swift
//
//  Created by DmitrJuga on 17.08.15.
//  Copyright (c) 2015 Dmitriy Dolotenko. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(with comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
}
