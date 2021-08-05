//
//  AnimatedPresenterDismisser.swift
//  FinService
//
//  Created by Semyon on 10/10/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

enum AnimatedPresenterType {
    case dropDown
    case popOver
}

private struct Constants {
    static let transitionDuration: TimeInterval = 0.3
}

final class AnimatedPresenter: NSObject, UIViewControllerAnimatedTransitioning {
    private struct VisualEffectAppearence {
        static let colorTint = UIColor.mtsDeepBlue
        static let alpha: CGFloat = 0.74
    }
    
    private let type: AnimatedPresenterType
    private let alpha: CGFloat
    
    init(type: AnimatedPresenterType, alpha: CGFloat = VisualEffectAppearence.alpha) {
        self.type = type
        self.alpha = alpha
        super.init()
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return Constants.transitionDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        guard let toViewController = transitionContext.viewController(forKey: .to) else {
            return
        }
        
        let visualEffectView = UIView(frame: containerView.bounds)
        visualEffectView.backgroundColor = VisualEffectAppearence.colorTint
        visualEffectView.alpha = 0
        containerView.addSubview(visualEffectView)
        
        containerView.addSubview(toViewController.view)
        toViewController.view.translatesAutoresizingMaskIntoConstraints = false
        toViewController.view.clipsToBounds = true
        containerView.constraintToBounds(view: toViewController.view)
        containerView.layoutIfNeeded()
        switch type {
        case .dropDown:
            toViewController.view.frame.origin.y -= containerView.frame.height - toViewController.view.frame.minY
        case .popOver:
            toViewController.view.frame.origin.y += containerView.frame.height - toViewController.view.frame.minY
        }
        UIView.animate(withDuration: transitionDuration(using: transitionContext),
                       animations: { [weak visualEffectView, weak toViewController, self] in
                        visualEffectView?.alpha = self.alpha
                        toViewController?.view.frame = containerView.frame
        }) { completed in
            transitionContext.completeTransition(completed)
        }
    }
}

final class AnimatedDismisser: NSObject, UIViewControllerAnimatedTransitioning {
    private let type: AnimatedPresenterType
    
    init(type: AnimatedPresenterType) {
        self.type = type
        super.init()
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return Constants.transitionDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        guard let fromViewController = transitionContext.viewController(forKey: .from) else {
            return
        }
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext),
                       animations: { [weak self, fromViewController, containerView] in
                           guard let self = self else { return }
                           containerView.alpha = 0
                           switch self.type {
                           case .dropDown:
                               fromViewController.view.frame.origin.y -= containerView.frame.height - fromViewController.view.frame.minY
                           case .popOver:
                               fromViewController.view.frame.origin.y += containerView.frame.height - fromViewController.view.frame.minY
                           }
        }) { completed in
            transitionContext.completeTransition(completed)
        }
    }
}
