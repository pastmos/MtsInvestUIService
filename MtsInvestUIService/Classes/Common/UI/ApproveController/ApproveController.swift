//
//  ApproveController.swift
//  FinService
//
//  Created by Максим Атюцкий on 07/12/2018.
//  Copyright © 2018 MTS IT. All rights reserved.
//

import UIKit

@objc protocol ApproveControllerDelegate: class {
    @objc optional func actionButtonTapped()
}

final class ApproveController: UIViewController {
    @Accessibility("successImageView")
    @IBOutlet var successImageView: UIImageView!
    @Accessibility("successTitleLabel")
    @IBOutlet var approveTitle: UILabel!
    @Accessibility("successDescriptionLabel")
    @IBOutlet var approveText: UILabel!
    @Accessibility("actionButton")
    @IBOutlet var actionButton: ShadowButton!
    @Accessibility("openPortolfioButton")
    @IBOutlet var openPortolfioButton: UIButton!
    
    @IBOutlet weak var buttonHeightConstraint: NSLayoutConstraint!
    
    var titleText: String?
    var text: String?
    var buttonTitle: String?
    var isButtonVisible: Bool!
    
    weak var delegate: ApproveControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !isButtonVisible {
            hideButton()
        }
        
        setupInputData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .white
        (navigationController as? ClearNavigationController)?.isStatusBarLight = false
        let backButton = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButton
    }
    
    private func hideButton() {
        buttonHeightConstraint.constant = 0
        actionButton.isHidden = true
        
        view.layoutIfNeeded()
    }
    
    private func setupInputData() {
        approveTitle.text = titleText
        approveText.text = text
        actionButton.setTitle(buttonTitle, for: .normal)
    }

    @IBAction func actionButtonTapped() {
        guard let delegate = self.delegate else { return }
        
        delegate.actionButtonTapped?()
    }
    
    @IBAction func toMyPortfolioButtonClicked() {
       
    }
}
