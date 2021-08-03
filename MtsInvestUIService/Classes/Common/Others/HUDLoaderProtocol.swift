//
//  HUDLoaderProtocol.swift
//  FinService
//
//  Created by Максуд on 21/08/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation
import UIKit

protocol HUDLoaderProtocol: class {
    func dismissHUD(with completion: (() -> Void)?)
    func showProgressHUD(blocking: Bool)
    func showProgressHUD(on view: UIView)
    func showErrorAlert(withDescription description: String, title: String, handler: ActionHandler?)
    func showAlert(title: String, message: String, handler: ActionHandler?)
    func showFullScreenError()
}

// -- HUD extensions
extension HUDLoaderProtocol {
    func showProgressHUD(blocking: Bool = true) {
        DispatchQueue.main.async {
            ProgressHUD.showProgressHUD(blocking: blocking)
        }
    }
    
    func showProgressHUD(on view: UIView) {
        DispatchQueue.main.async {
            ProgressHUD.showProgressHUD(on: view)
        }
    }
    
    func dismissHUD(with completion: (() -> Void)? = nil) {
        DispatchQueue.main.async {
            ProgressHUD.dismissProgressHUD(completion: completion)
        }
    }
    
    func showErrorAlert(withDescription description: String, title: String = R.string.localizable.errorTitle(), handler: ActionHandler? = nil) {
        DispatchQueue.main.async { [weak self] in
            self?.showAlert(title: title,
                            message: description,
                            handler: handler)
        }
    }
    
    func showAlert(title: String = "",
                   message: String = "",
                   handler: ActionHandler? = nil) {
        DispatchQueue.main.async {
            ProgressHUD.dismissProgressHUD()
        }
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ОК", style: .cancel, handler: { _ in
            handler?()
        }))
        
        (self as? BaseViewController)?.present(alert, animated: true, completion: nil)
    }
    
    func showFullScreenError() {
        (self as? BaseViewController)?.present(R.storyboard.main.errorViewController()!, animated: true)
    }
}

extension UIAlertController {
    private static var alertWindow: UIWindow?
    
    func present(animated: Bool, completion: (() -> Void)?) {
        UIAlertController.alertWindow = UIWindow(frame: UIScreen.main.bounds)
        UIAlertController.alertWindow?.rootViewController = UIViewController()
        //UIAlertController.alertWindow?.windowLevel = UIWindow.Level.alert + 1
        UIAlertController.alertWindow?.backgroundColor = .clear
        UIAlertController.alertWindow?.makeKeyAndVisible()
        UIAlertController.alertWindow?.rootViewController?.present(self, animated: animated, completion: completion)
    }
    
    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        UIAlertController.alertWindow?.isHidden = true
        UIAlertController.alertWindow = nil
    }
}
