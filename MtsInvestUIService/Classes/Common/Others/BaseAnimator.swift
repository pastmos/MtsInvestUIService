//
//  BaseAnimator.swift
//  FinService
//
//  Created by Semyon on 10/11/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

struct AnimatorConstants {
    static let presentTransitionDuration: TimeInterval = 0.8
    static let dismissTransitionDuration: TimeInterval = 0.5
    
    static let transitionLinearDurationMultiplier: TimeInterval = 0.6
    
    static let springDamping: CGFloat = 0.7
    static let springVelocity: CGFloat = 0.5
    
    static let cornerRadius: CGFloat = 16
}

class BaseAnimatedPresenter: NSObject, UIViewControllerAnimatedTransitioning {
    let rect: CGRect
    let animator: UIViewPropertyAnimator

    init(rect: CGRect, dismiss: Bool = false) {
        self.rect = rect
        self.animator = type(of: self).createBaseSpringAnimator(rect: rect, isDismiss: dismiss)
        super.init()
    }

    private static func createBaseSpringAnimator(rect: CGRect, isDismiss: Bool) -> UIViewPropertyAnimator {
        let cardPositionY = rect.minY
        let distanceToBounce = abs(rect.minY)
        let extentToBounce = cardPositionY < 0 ? rect.height : UIScreen.main.bounds.height
        let dampFactorInterval: CGFloat = 0.3
        let damping: CGFloat = 1.0 - dampFactorInterval * (distanceToBounce / extentToBounce)

        let springTiming = UISpringTimingParameters(dampingRatio: damping,
                                                    initialVelocity: .zero)
        
        let duration = isDismiss ? AnimatorConstants.dismissTransitionDuration : AnimatorConstants.presentTransitionDuration
        return UIViewPropertyAnimator(duration: duration,
                                      timingParameters: springTiming)
    }
    
    //MARK: UIViewControllerAnimatedTransitioning
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return AnimatorConstants.presentTransitionDuration
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        configureAnimatorWith(transitionContext: transitionContext)
        interruptibleAnimator(using: transitionContext).startAnimation()
    }

    func interruptibleAnimator(using transitionContext: UIViewControllerContextTransitioning) -> UIViewImplicitlyAnimating {
        return animator
    }
    
    //MARK: Helpers
    func configureAnimatorWith(transitionContext: UIViewControllerContextTransitioning) {
        fatalError("BaseAnimatedPresenter configureAnimatorWith not implemented")
    }
}
