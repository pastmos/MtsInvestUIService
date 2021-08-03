//
//  ShowcaseAnimatedDismisser.swift
//  FinService
//
//  Created by Semyon on 10/11/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

final class ShowcaseAnimatedDismisser: BaseAnimatedPresenter {
    required init(rect: CGRect) {
        super.init(rect: rect, dismiss: true)
    }
    
    override func configureAnimatorWith(transitionContext: UIViewControllerContextTransitioning) {
        guard let fromController = transitionContext.viewController(forKey: .from),
            let fromView = fromController.view else { return }
        let container = transitionContext.containerView

        container.removeConstraints(container.constraints)
        
        let animatedContainerVerticalConstraint = fromView.topAnchor.constraint(equalTo: container.topAnchor)
        let widthCardConstraint = fromView.widthAnchor.constraint(equalToConstant: fromView.frame.width)
        let heightCardConstraint = fromView.heightAnchor.constraint(equalToConstant: fromView.frame.height)
        let centerX = fromView.centerXAnchor.constraint(equalTo: container.centerXAnchor)
        let array = [animatedContainerVerticalConstraint,
                     widthCardConstraint,
                     heightCardConstraint,
                     centerX]
        array.forEach {
            $0.priority = UILayoutPriority(UILayoutPriority.defaultHigh.rawValue + 1)
        }
        NSLayoutConstraint.activate(array)
        
        fromView.layer.cornerRadius = AnimatorConstants.cornerRadius
        
        animator.addAnimations { [weak self] in
            guard let `self` = self else { return }
            fromView.transform = .identity
            animatedContainerVerticalConstraint.constant = self.rect.minY
            heightCardConstraint.constant = self.rect.height
            widthCardConstraint.constant = self.rect.width
            container.layoutIfNeeded()
        }
        
        animator.addCompletion {[weak transitionContext]_ in
            transitionContext?.completeTransition(true)
        }
    }
}
