//
//  ShowcaseAnimatedPresenter.swift
//  FinService
//
//  Created by Semyon on 10/10/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

final class ShowcaseAnimatedPresenter: BaseAnimatedPresenter {

    override func configureAnimatorWith(transitionContext: UIViewControllerContextTransitioning) {
        guard let toView = transitionContext.view(forKey: .to) else { return }

        let container = transitionContext.containerView

        toView.translatesAutoresizingMaskIntoConstraints = false
        toView.layer.masksToBounds = true
        toView.layer.cornerRadius = AnimatorConstants.cornerRadius
        container.addSubview(toView)
        var cardTopConstraint = toView.topAnchor.constraint(equalTo: container.topAnchor,
                                                            constant: rect.minY)
        let cardWidthConstraint = toView.widthAnchor.constraint(equalToConstant: rect.width)
        let cardHeightConstraint = toView.heightAnchor.constraint(equalToConstant: rect.height)
        let centerX = toView.centerXAnchor.constraint(equalTo: container.centerXAnchor)
        let array = [
            cardTopConstraint,
            centerX,
            cardWidthConstraint,
            cardHeightConstraint
        ]
        array.forEach{ $0.priority = .defaultHigh }
        NSLayoutConstraint.activate(array)
        container.layoutIfNeeded()

        func animateContainerBouncingUp() {
            cardTopConstraint.constant = 0
            container.layoutIfNeeded()
        }

        func animateCardDetailViewSizing() {
            cardWidthConstraint.constant = container.bounds.width
            cardHeightConstraint.constant = container.bounds.height
            toView.layer.cornerRadius = .zero
            container.layoutIfNeeded()
        }

        animator.addAnimations {
            animateContainerBouncingUp()
            let interval = AnimatorConstants.presentTransitionDuration * AnimatorConstants.transitionLinearDurationMultiplier
            UIViewPropertyAnimator(duration: interval,
                                   curve: .linear,
                                   animations: animateCardDetailViewSizing).startAnimation()
        }

        animator.addCompletion { _ in
            toView.layer.cornerRadius = .zero

            let effect = UIVisualEffectView(effect: UIBlurEffect(style: .light))
            effect.frame = container.bounds

            container.insertSubview(effect, at: .zero)
            transitionContext.completeTransition(true)
        }
    }
}
