//
//  ShadowButton.swift
//  FinService
//
//  Created by Nikita Merkel on 31/10/2018.
//  Copyright © 2018 MTS IT. All rights reserved.
//

import UIKit

class ShadowButton: UIButton {
    struct Constant {
        static let shadowX: CGFloat = 6
        static let shadowPadding: CGFloat = 6
        static let shadowHeight: CGFloat = 44
        static let shadowScaleX: CGFloat = 0.975
        static let shadowScaleY: CGFloat = 0.96
        static let animationDuration: Double = 0.2
    }
    
    // MARK: A CGFloat value that determines the corner radius for button
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    var shadowLayer: CAShapeLayer!
    
    override var backgroundColor: UIColor? {
        didSet {
            layer.shadowColor = backgroundColor?.cgColor
        }
        willSet {
            layer.shadowColor = backgroundColor?.cgColor
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 5.0
        layer.masksToBounds = false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var value: CGPath
        if isHighlighted {
            let rect = CGRect(x: Constant.shadowX, y: 10, width: self.frame.width - Constant.shadowPadding, height: Constant.shadowHeight)
            value = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius).cgPath
        }else{
            let rect = CGRect(x: Constant.shadowX, y: 14, width: self.frame.width - Constant.shadowPadding * 2, height: Constant.shadowHeight)
            value = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius).cgPath
        }
        
        let animation = CABasicAnimation(keyPath: "shadowPath")
        animation.duration = Constant.animationDuration
        animation.fromValue = layer.shadowPath
        animation.toValue = value
        layer.add(animation, forKey: animation.keyPath)
        layer.shadowPath = value
    }
    
    override var isHighlighted: Bool {
        didSet {
            let transform = isHighlighted ? CGAffineTransform(scaleX: Constant.shadowScaleX, y: Constant.shadowScaleY) : .identity
            UIView.animate(withDuration: Constant.animationDuration) {
                self.transform = transform
            }
        }
    }
    
    override var isEnabled: Bool {
        didSet {
            var titleColor = self.currentTitleColor
            let backgroundColor = self.backgroundColor!
            titleColor = titleColor.withAlphaComponent(isEnabled ? 1 : 0.5)
            
            layer.shadowColor = isEnabled ? backgroundColor.cgColor : #colorLiteral(red: 0.7333333333, green: 0.7568627451, blue: 0.7803921569, alpha: 1)
            
            setTitleColor(titleColor, for: .normal)
            setTitleColor(titleColor, for: .disabled)
        }
    }
}
