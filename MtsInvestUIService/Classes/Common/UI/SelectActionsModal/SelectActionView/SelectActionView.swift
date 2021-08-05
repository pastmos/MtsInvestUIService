//
//  SelectActionModalView.swift
//  FinService
//
//  Created by Sergey Panov on 19.02.2021.
//  Copyright © 2021 MTS IT. All rights reserved.
//

import UIKit

protocol SelectActionModalProtocol {
    func configure(type: ActionModalType, viewData: SelectActionModalViewData, output: SelectActionModalOutput)
}

final class SelectActionView: UIView, SelectActionModalProtocol {

    @IBOutlet private weak var imageView: UIView!
    @IBOutlet private weak var titleView: UIView!
    @IBOutlet private weak var descriptionView: UIView!
    @Accessibility("actionButton")
    @IBOutlet private var actionButtonView: UIView!
    @Accessibility("customAction")
    @IBOutlet private var customActionButtonView: UIView!
    @Accessibility("closeButton")
    @IBOutlet private var closeButtonView: UIView!
    
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    @IBOutlet private weak var actionButton: UIButton! {
        didSet {
            actionButton.backgroundColor = Assets.Colors.controlsPrimaryActive.color
        }
    }
    @IBOutlet private weak var customActionButton: UIButton!
    @IBOutlet private weak var closeButton: UIButton!
    
    @IBOutlet private weak var imageSize: NSLayoutConstraint!
    
    weak var output: SelectActionModalOutput?
    
    func configure(type: ActionModalType,
                   viewData: SelectActionModalViewData,
                   output: SelectActionModalOutput) {
        self.output = output
        
        actionButton.setTitle(viewData.actionButtonTitle, for: .normal)
        customActionButton.setTitle(viewData.customActionButtonTitle, for: .normal)
        closeButton.setTitle(viewData.closeButtonTitle, for: .normal)
        
        titleLabel.text = viewData.title
        descriptionLabel.text = viewData.description
        image.image = viewData.image
        
        switch type {
        case .oneButton:
            setOneButton()
            imageView.isHidden = true
        case .twoButtons:
            setTwoButtons()
            imageView.isHidden = true
        case .threeButtons:
            imageView.isHidden = true
        case .oneButtonPicture:
            setOneButton()
            imageView.isHidden = false
        case .twoButtonsPicture:
            setTwoButtons()
            imageView.isHidden = false
        case .threeButtonsPicture:
            viewData.closeButtonTitle.isEmpty ? setTwoCustomButtons() : setThreeButtons()
            imageView.isHidden = false
        }
    }
    
    private func setOneButton() {
        actionButtonView.isHidden = false
        customActionButtonView.isHidden = true
        closeButtonView.isHidden = true
    }
    
    private func setTwoButtons() {
        actionButtonView.isHidden = false
        customActionButtonView.isHidden = true
        closeButtonView.isHidden = false
    }
    
    private func setThreeButtons() {
        actionButtonView.isHidden = false
        customActionButtonView.isHidden = false
        closeButtonView.isHidden = false
    }
    
    private func setTwoCustomButtons() {
        actionButtonView.isHidden = false
        customActionButtonView.isHidden = false
        closeButtonView.isHidden = true
    }

    @IBAction private func ActionDidTap() {
        output?.onAction(data: nil)
    }
    
    @IBAction private func customActionDidTap() {
        output?.onCustomAction(data: nil)
    }
    
    @IBAction private func closeDidTap() {
        output?.onClose()
    }
}
