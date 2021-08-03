//
//  NSObject+Extension.swift
//  FinService
//
//  Created by Rodion Baglay on 17/07/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
