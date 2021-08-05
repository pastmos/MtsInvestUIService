//
//  UIViewController+NavBar.swift
//  FinService
//
//  Created by Semyon on 4/19/20.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

extension UIViewController {
    func configureNavigationBar(title: String? = nil,
                                preferredLargeTitle: Bool? = nil,
                                isTransparent: Bool = false,
                                largeTitleFont: UIFont = UIFont.mtsSansBold(size: 24),
                                backgoundColor: UIColor = .white,
                                tintColor: UIColor = .mtsDeepBlue) {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.largeTitleTextAttributes = [.font: largeTitleFont]
            
            if isTransparent {
                navBarAppearance.configureWithTransparentBackground()
                navBarAppearance.backgroundColor = .clear
            } else {
                navBarAppearance.configureWithDefaultBackground()
                navBarAppearance.backgroundColor = backgoundColor
            }
            
            navBarAppearance.shadowColor = .clear
            navBarAppearance.setBackIndicatorImage(R.image.icon_back(), transitionMaskImage: R.image.icon_back())
            
            navigationController?.navigationBar.standardAppearance = navBarAppearance
            navigationController?.navigationBar.compactAppearance = navBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
            
            if let isLarge = preferredLargeTitle {
                navigationController?.navigationBar.prefersLargeTitles = isLarge
            }
        } else if #available(iOS 11.0, *) {
            if let isLarge = preferredLargeTitle {
                navigationController?.navigationBar.prefersLargeTitles = isLarge
            }
            navigationController?.navigationBar.largeTitleTextAttributes = [.font: largeTitleFont]
            navigationController?.navigationBar.shadowImage = UIImage()
            navigationController?.navigationBar.backgroundColor = backgoundColor
            navigationController?.navigationBar.backIndicatorImage = R.image.icon_back()
            navigationController?.navigationBar.backIndicatorTransitionMaskImage = R.image.icon_back()
        }
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = tintColor
        navigationController?.navigationBar.barTintColor = backgoundColor
        navigationController?.view.backgroundColor = backgoundColor
        navigationItem.title = title
    }
}
