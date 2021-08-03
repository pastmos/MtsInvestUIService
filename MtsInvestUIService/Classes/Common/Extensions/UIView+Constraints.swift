//
//  UIView+Constraints.swift
//  FinService
//
//  Created by Semyon on 10/15/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult func constraintToBounds(view: UIView,
                                               isActivated: Bool = true,
                                               topMargin: CGFloat = 0,
                                               letfMargin: CGFloat = 0,
                                               rightMargin: CGFloat = 0,
                                               bottomMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            view.topAnchor.constraint(equalTo: topAnchor, constant: topMargin),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomMargin),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: letfMargin),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: rightMargin)
        ]
        guard isActivated else { return constraints }
        NSLayoutConstraint.activate(constraints)
        return constraints
    }
    
    @discardableResult
    func constraintToCenter(view: UIView,
                            isActivated: Bool = true) -> [NSLayoutConstraint] {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            view.centerXAnchor.constraint(equalTo: centerXAnchor),
            view.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        guard isActivated else { return constraints }
        NSLayoutConstraint.activate(constraints)
        return constraints
    }
    
    
    func constraintToSafeArea(view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                view.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                view.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
                view.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
            ])
        } else {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: topAnchor, constant: layoutMargins.top + 10),
                view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: layoutMargins.bottom),
                view.leadingAnchor.constraint(equalTo: leadingAnchor),
                view.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
        }
    }
}
