//
//  UIView+Extension.swift
//  FinService
//
//  Created by Andrey on 24/07/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

extension UIView {
    func makeRound(corners: UIRectCorner, radius: CGFloat) {
        let rectShape = CAShapeLayer()
        rectShape.bounds = frame
        rectShape.position = center
        let radiusSize = CGSize(width: radius, height: radius)
        rectShape.path = UIBezierPath(roundedRect: bounds,
                                      byRoundingCorners: corners,
                                      cornerRadii: radiusSize).cgPath
        layer.mask = rectShape
    }
    
    enum GradientColorDirection {
        case vertical
        case horizontal
        case diagonal
    }
    
    func removeGradients() {
        (self.layer.sublayers?.filter { $0 is CAGradientLayer })?.forEach { sublayer in
            sublayer.removeFromSuperlayer()
        }
    }
    
    func addGradient(_ colors: [UIColor], opacity: Float = 1, direction: GradientColorDirection = .horizontal) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.opacity = opacity
        gradientLayer.colors = colors.map { $0.cgColor }
        
        if case .horizontal = direction {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        }
        if case .diagonal = direction {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        }
        
        gradientLayer.frame = bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

    static func make<T: UIView>(config: (T) -> Void) -> T {
        let object = T()
        config(object)
        return object
    }
}




