//
//  ClearNavigationController.swift
//  FinService
//
//  Created by Дмитрий on 05.10.17.
//  Copyright © 2017 MTS IT. All rights reserved.
//

import UIKit

open class ClearNavigationController: UINavigationController {
    /// Use this to switch between default and light status bar style. Default is false
    @IBInspectable
    var isStatusBarLight: Bool = false {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    var hasUnsavedChanges: Bool = false

    override open func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        
        definesPresentationContext = true
        modalPresentationCapturesStatusBarAppearance = true
        
        navigationBar.titleTextAttributes = [.font: UIFont.mtsSansMedium(size: 17.0), .foregroundColor: UIColor.mtsDeepBlue]
        navigationBar.backIndicatorImage?.accessibilityIdentifier = "backButton"
        
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        interactivePopGestureRecognizer?.delegate = self
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return isStatusBarLight ? .lightContent : .default
    }

    open override func popViewController(animated: Bool) -> UIViewController? {
        if !hasUnsavedChanges {
            return super.popViewController(animated: animated)
        } else {
            confirmDiscardChanges()
            return nil
        }
    }

    private func confirmDiscardChanges() {
        let alertContoller = SelectActionModalViewController()
        alertContoller.modalPresentationStyle = .fullScreen
        alertContoller.configure(
            type: .threeButtonsPicture,
            output: self,
            viewData: SelectActionModalViewData(
                title: R.string.localizable.newClientDiscardChangeTitle(),
                description: "",
                image: R.image.attentionCircleOrangeIcon(),
                actionButtonTitle: R.string.localizable.cancel(),
                closeButtonTitle: "",
                customActionButtonTitle: R.string.localizable.feedbackResultOk()),
            isClosable: true)
        self.topViewController?.present(alertContoller,
                                        animated: true)
    }
}

extension ClearNavigationController: UIGestureRecognizerDelegate {
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if !hasUnsavedChanges {
            return true
        } else {
            confirmDiscardChanges()
            return false
        }
    }
}

extension ClearNavigationController: SelectActionModalOutput {
    func onAction(data: Any?) { }

    func onCustomAction(data: Any?) {
        self.hasUnsavedChanges = false
        self.popViewController(animated: true)
    }

    func onClose() { }
}

extension UIBarButtonItem {
	@available(iOS 14.0, *)
	static func swizzle() {
		let originSelector = #selector(setter: UIBarButtonItem.menu)
		let swizzleSelector = #selector(setMenu)
		let originMethod = class_getInstanceMethod(UIBarButtonItem.self, originSelector)
		let swizzleMethod = class_getInstanceMethod(UIBarButtonItem.self, swizzleSelector)
		method_exchangeImplementations(originMethod!, swizzleMethod!)
	}

	@objc func setMenu() {
		self.title = ""
	}

 }

