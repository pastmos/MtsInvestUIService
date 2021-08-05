//
//  UIApplication+Extension.swift
//  FinService
//
//  Created by Rodion Baglay on 18/07/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

fileprivate let tag = 987654321

extension UIApplication {
    var statusBarView: UIView? {
        if #available(iOS 13.0, *) {
            if let statusBar = UIApplication.shared.keyWindow?.viewWithTag(tag) {
                return statusBar
            }
            else {
                let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
                statusBarView.tag = tag

                UIApplication.shared.keyWindow?.insertSubview(statusBarView, at: 0)
                return statusBarView
            }
        } else {
            if responds(to: Selector(("statusBar"))) {
                return value(forKey: "statusBar") as? UIView
            }
        }
        return nil
    }
    
    func removeEmulatedStatusBar() {
        if #available(iOS 13.0, *) {
            UIApplication.shared.keyWindow?.viewWithTag(tag)?.removeFromSuperview()
        }
    }
    
    var currentWindow: UIWindow? {
        windows.first
    }
    
    var currentRoot: UITabBarController? {
        currentWindow?.rootViewController as? UITabBarController
    }
    
    var selectedTabNavigationInCurrentRoot: UINavigationController? {
        currentRoot?.selectedViewController as? UINavigationController
    }
}
