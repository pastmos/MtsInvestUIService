//
//  ShowMessageProtocol.swift
//  FinService
//
//  Created by Максуд on 21/08/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation
import UIKit

protocol PopupMessagesProtocol: ShowMessageProtocol, HUDLoaderProtocol {
    func showPopup(title: String,
                   message: String,
                   attributedMessage: NSAttributedString?,
                   textAlignment: NSTextAlignment,
                   titleAlignment: NSTextAlignment,
                   models: [PopupButtonModel],
				   viewController: UIViewController?)
}

extension PopupMessagesProtocol {
    /// Use this to show custom popup
    ///
    /// - Parameters:
    ///   - title: String value for popup title
    ///   - message: String value for popup message
    ///   - textAlignment: NSTextAlignment case value for message text alignment. Default is .left
    ///   - titleAlignment: NSTextAlignment case value for title text alignment. Default is .center
    ///   - models: Models for buttons
    func showPopup(title: String,
                   message: String,
                   attributedMessage: NSAttributedString? = nil,
                   textAlignment: NSTextAlignment = .left,
                   titleAlignment: NSTextAlignment = .center,
                   models: [PopupButtonModel] = [.closeButton],
				   viewController: UIViewController? = nil) {
        let popUpController = PopupController(nibName: "PopupController", bundle: nil)

        popUpController.titleText = title
        popUpController.popupText = message
        popUpController.attributedText = attributedMessage
        popUpController.textAlignment = textAlignment
        popUpController.titleAlignment = titleAlignment
        popUpController.buttonModels = models

        popUpController.modalPresentationStyle = .overFullScreen
        popUpController.modalTransitionStyle = .crossDissolve

		if let viewController = viewController {
			viewController.present(popUpController, animated: true, completion: nil)
		} else {
			(self as? UIViewController)?.present(popUpController, animated: true, completion: nil)
		}
    }
}

protocol ShowMessageProtocol: class {
    func show(_ error: AppError, title: String, handler: ((UIAlertAction) -> Void)?)
    func show(message: String, title: String, handler: ((UIAlertAction) -> Void)?)
}

extension ShowMessageProtocol {
    func show(_ error: AppError, title: String = "", handler: ((UIAlertAction) -> Void)? = nil) {
        (self as? BaseViewController)?.dismissHUD()
        show(message: error.description, title: title, handler: handler)
    }

    func show(message: String = "", title: String = "", handler: ((UIAlertAction) -> Void)? = nil) {
        (self as? BaseViewController)?.dismissHUD()
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: handler))
        (self as? UIViewController)?.present(alert, animated: true, completion: nil)
    }
}
