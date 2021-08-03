//
//  BaseViewController.swift
//  FinService
//
//  Created by Дмитрий on 17.08.17.
//  Copyright © 2017 MTS IT. All rights reserved.
//

import Material
import UIKit

protocol BaseTextFieldSetupProtocol {
    func setupTextField(_ textField: ErrorTextField)
    func setupTextFields(_ textFields: [ErrorTextField])
}

extension BaseTextFieldSetupProtocol {
    func setupTextField(_ textField: ErrorTextField) {
        textField.font = .mtsSansRegular(size: 17.0)
        textField.textColor = .mtsDeepBlue
        
        textField.placeholderLabel.font = .mtsSansRegular(size: 17.0)
        textField.placeholderLabel.textColor = .mtsGreyChateau
        textField.placeholderActiveColor = .mtsBattleshipGrey
        textField.placeholderVerticalOffset = 16.0
        
        textField.errorLabel.font = .mtsSansRegular(size: 14)
        textField.errorLabel.textColor = .mtsRedishOrange
        textField.error = "Error.FieldIsEmpty".localized
        textField.errorVerticalOffset = 2.0
        
        textField.dividerActiveColor = .mtsDividerGrey
        textField.dividerNormalColor = .mtsDividerGrey
        
        textField.dividerActiveHeight = 1.0
    }
    
    func setupTextFields(_ textFields: [ErrorTextField]) {
        textFields.forEach { textField in
            self.setupTextField(textField)
        }
    }
}

class BaseViewController: UIViewController, PopupMessagesProtocol, BaseTextFieldSetupProtocol, HUDLoaderProtocol {
    // MARK: - VC Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let needsCancel = needsCancelButton else {
            if isModal {
                addCancelButton()
            }
            return
        }
        
        if isModal, needsCancel {
            addCancelButton()
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func addSimpleHaptic(type: UINotificationFeedbackGenerator.FeedbackType){
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    // MARK: - Routines
    
    var screenName: String? {
        return nil
    }
    
    let kAnimationDuration: TimeInterval = {
        0.35
    }()
    
    static let scale: CGFloat = {
        UIScreen.main.scale
    }()
    
    let scale: CGFloat = {
        BaseViewController.scale
    }()
    
    static var screenSize: CGSize {
        return UIScreen.main.bounds.size
    }
    
    var screenSize: CGSize {
        return BaseViewController.screenSize
    }
    
    static var screenSizeModel: ScreenSizeModel {
        return ScreenSizeModel(rawValue: screenSize.height) ?? ScreenSizeModel(rawValue: 0)!
    }
    
    var screenSizeModel: ScreenSizeModel {
        return BaseViewController.screenSizeModel
    }
    
    var needsCancelButton: Bool?
    
    var isModal: Bool {
        return presentingViewController != nil && navigationController?.viewControllers.first == self
    }
    
    /// Material text field initial settings
    func setupTextField(_ textField: ErrorTextField) {
        textField.font = .mtsSansRegular(size: 17.0)
        textField.textColor = .mtsDeepBlue
        
        textField.placeholderLabel.font = .mtsSansRegular(size: 17.0)
        textField.placeholderLabel.textColor = .mtsGreyChateau
        textField.placeholderActiveColor = .mtsBattleshipGrey
        textField.placeholderVerticalOffset = 16.0
        
        textField.errorLabel.font = .mtsSansRegular(size: 14)
        textField.errorLabel.textColor = .mtsRedishOrange
        textField.error = "Error.FieldIsEmpty".localized
        textField.errorVerticalOffset = 7.0
        
        textField.dividerActiveColor = .mtsDividerGrey
        textField.dividerNormalColor = .mtsDividerGrey
        
        textField.dividerActiveHeight = 1.0
    }
    
    // MARK: - Navigation
    
    static func segueId(for vcId: String) -> String {
        return "to" + vcId
    }
    
    func segueId(for vcId: String) -> String {
        return BaseViewController.segueId(for: vcId)
    }
    
    func segueIdModal(for vcId: String) -> String {
        return segueId(for: vcId) + "Modal"
    }
    
    func performSegue(to vcId: String, sender: Any? = nil) {
        performSegue(withIdentifier: segueId(for: vcId), sender: sender)
    }
    
    func performModalSegue(to vcId: String, sender: Any? = nil) {
        performSegue(withIdentifier: segueIdModal(for: vcId), sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        prepareBackButton(sender)
    }
    
    func prepareBackButton(_ sender: Any?) {
        setBackButton()
    }
    
    func setBackButton(title: String = " ", size: CGFloat = 14.0, color: UIColor = UIColor.mtsDeepBlue, tintColor: UIColor = UIColor.clear, customAction: Selector? = #selector(backDidPressed)) {
        
        guard !isModal else {
            return
        }
        
        let backButton = UIBarButtonItem(title: title, style: .plain, target: nil, action: customAction)
        
        if #available(iOS 13.0, *) {
            navigationController?.navigationBar.standardAppearance.setBackIndicatorImage( R.image.icon_back(), transitionMaskImage: R.image.icon_back())
        } else {
            navigationController?.navigationBar.backIndicatorImage = R.image.icon_back()
            navigationController?.navigationBar.backIndicatorTransitionMaskImage = R.image.icon_back()
        }
        
        backButton.setTitleTextAttributes([.font: UIFont.mtsSansBold(size: size), .foregroundColor: color], for: .normal)
        backButton.setTitleTextAttributes([.font: UIFont.mtsSansBold(size: size), .foregroundColor: color], for: .selected)
        
        navigationItem.backBarButtonItem = backButton
        backButton.accessibilityIdentifier = "backButton"
        navigationController?.navigationBar.tintColor = tintColor
    }
    
    @objc private func backDidPressed() {
        dismissHUD()
        navigationController?.popViewController(animated: true)
    }
    
    func addCancelButton(title: String = "Cancel".localized) {
        let cancelButton = UIBarButtonItem(title: title,
                                           style: .plain,
                                           target: self,
                                           action: #selector(dismissVC))
        cancelButton.setTitleTextAttributes([.font: UIFont.mtsSansBold(size: 14.0), .foregroundColor: UIColor.mtsDeepBlue], for: .normal)
        cancelButton.setTitleTextAttributes([.font: UIFont.mtsSansBold(size: 14.0), .foregroundColor: UIColor.mtsDeepBlue], for: .selected)
        navigationItem.leftBarButtonItem = cancelButton
    }
    
    @objc func dismissVC() {
        if isModal {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    @objc func dismissPresenterVC() {
        presentedViewController?.dismiss(animated: true, completion: nil)
    }
    
    @objc func popToRoot(animated: Bool = false) {
        navigationController?.popToRootViewController(animated: animated)
    }
    
    func showApprove(title: String,
                     text: String,
                     isButtonVisible: Bool = false,
                     buttonTitle: String? = nil,
                     delegate: ApproveControllerDelegate? = nil) {
        let approveController = ApproveController(nibName: "ApproveController", bundle: nil)
        
        approveController.delegate = delegate
        
        approveController.modalPresentationStyle = .overCurrentContext
        approveController.modalTransitionStyle = .crossDissolve
        
        approveController.titleText = title
        approveController.text = text
        approveController.isButtonVisible = isButtonVisible
        approveController.buttonTitle = buttonTitle
        
        present(approveController, animated: true, completion: nil)
    }
    
}
