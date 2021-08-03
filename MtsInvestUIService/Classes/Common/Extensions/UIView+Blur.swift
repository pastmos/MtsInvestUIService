//
//  UIView+Blur.swift
//  FinService
//
//  Created by Sergey Panov on 19.02.2021.
//  Copyright © 2021 MTS IT. All rights reserved.
//

import UIKit

extension UIView {
    func applyBlurEffect(style: UIBlurEffect.Style, alpha: CGFloat) {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = alpha
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(blurEffectView)
    }
}
