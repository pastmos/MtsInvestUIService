//
//  UIView+Nib.swift
//
//  Created by Дмитрий on 05.07.16.
//  Copyright © 2016 Дмитрий. All rights reserved.
//

import UIKit

extension UIView {
    
    public class func instantiateFromNib<T: UIView>(viewType: T.Type) -> T {
        return Bundle.main.loadNibNamed(String(describing: viewType), owner: nil, options: nil)!.first as! T
    }
    
    public class func instantiateFromNib() -> Self {
        return instantiateFromNib(viewType: self)
    }
}
