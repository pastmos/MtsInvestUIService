//
//  PopupController.swift
//  FinService
//
//  Created by Nikita Merkel on 14/11/2018.
//  Copyright © 2018 MTS IT. All rights reserved.
//

import UIKit

final class PopupController: UIViewController {
    
    //MARK: Constants
    private struct Constants {
        //MARK: Appearance
        static let backViewColor = UIColor.mtsDeepBlue.withAlphaComponent(0.8)
        static let popupViewCornerRadius: CGFloat = 8
        static let buttonCornerRadius: CGFloat = 6
        
        //MARK: Constraints
        static let horizontalFactor: CGFloat = 18
        static let verticalFactor: CGFloat = 24
        static let buttonHeight: CGFloat = 44
    }
    
    //MARK: Outlets
    @Accessibility("popupView", false)
    @IBOutlet var popupView: UIView!
    @Accessibility("popupTitleLabel")
    @IBOutlet var titleLabel: UILabel!
    @Accessibility("popupTextLabel")
    @IBOutlet var textLabel: UILabel!
    @Accessibility("popupTextView")
    @IBOutlet var textView: UITextView!
    
    var titleText: String?
    var attributedText: NSAttributedString?
    var popupText: String?
    var textAlignment: NSTextAlignment!
    var titleAlignment: NSTextAlignment!
    var buttonModels = [PopupButtonModel]()
    
    private var storedSubviews = [UIView]()
    
    //MARK: - Initialization
    convenience init(
        title: String,
        text: String,
        actions: [PopupButtonModel]
    ) {
        self.init(nibName: "PopupController", bundle: .main)
        self.titleText = title
        self.popupText = text
        self.attributedText = nil
        self.textAlignment = .left
        self.titleAlignment = .center
        self.buttonModels = actions
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupInputData()
        setupConstrainst()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let location = touches.first?.location(in: view),
            !popupView.frame.contains(location) else { return }
        dismiss(animated: true)
    }
    
    //MARK: Helpers
    private func setupViews() {
        let backView = UIView()
        backView.backgroundColor = Constants.backViewColor
        backView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(backView, at: .zero)
        view.constraintToBounds(view: backView)
        
        popupView.layer.cornerRadius = Constants.popupViewCornerRadius
    }
    
    private func setupInputData() {
        titleLabel.text = titleText
        titleLabel.textAlignment = titleAlignment
        
        if self.attributedText == nil {
        
            let attributedString = NSMutableAttributedString(string: popupText ?? " ")
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 2
            attributedString.addAttribute(.paragraphStyle,
                                          value:paragraphStyle,
                                          range: NSMakeRange(.zero, attributedString.length))
            textLabel.attributedText = attributedString

            textLabel.textAlignment = textAlignment
            textLabel.isHidden = false
            textView.isHidden = true
        }else {
            textLabel.isHidden = true
            textView.isHidden = false
            
            textView.attributedText = self.attributedText
        }
    }
    
    private func setupConstrainst() {
        var constraints = [NSLayoutConstraint]()
        buttonModels.forEach { model in
            let button = UIButton()
            button.accessibilityIdentifier = "popupActionButton"
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle(model.title, for: .normal)
            button.setTitleColor(model.titleColor, for: .normal)
            button.setBackgroundColor(model.buttonColor, for: .normal)
            button.layer.cornerRadius = Constants.buttonCornerRadius
            button.layer.masksToBounds = true
            button.addTarget(self, action: #selector(didTapped), for: .touchUpInside)
            
            popupView.addSubview(button)
            
            let previousView = storedSubviews.last
            let topMargin = previousView == nil ? Constants.verticalFactor : Constants.verticalFactor / 2
            
            var bottomAnchor: NSLayoutYAxisAnchor
            if self.attributedText != nil {
                bottomAnchor = previousView?.bottomAnchor ?? textView.bottomAnchor
            }else {
                bottomAnchor = previousView?.bottomAnchor ?? textLabel.bottomAnchor
            }
            
            constraints.append(contentsOf: [
                button.topAnchor.constraint(equalTo: bottomAnchor,
                                            constant: topMargin),
                button.leadingAnchor.constraint(equalTo: popupView.leadingAnchor,
                                                constant: Constants.horizontalFactor),
                button.trailingAnchor.constraint(equalTo: popupView.trailingAnchor,
                                                 constant: -Constants.horizontalFactor),
                button.heightAnchor.constraint(equalToConstant: Constants.buttonHeight)
            ])
            storedSubviews.append(button)
        }
        let bottomAnchor: NSLayoutYAxisAnchor
        if self.attributedText != nil {
            bottomAnchor = storedSubviews.last?.bottomAnchor ?? textView.bottomAnchor
        }else {
            bottomAnchor = storedSubviews.last?.bottomAnchor ?? textLabel.bottomAnchor
        }
        constraints.append(bottomAnchor.constraint(equalTo: popupView.bottomAnchor,
                                                   constant: -Constants.verticalFactor))
        NSLayoutConstraint.activate(constraints)
        view.layoutIfNeeded()
    }
    
    //MARK: Actions
    @objc private func didTapped(sender: UIButton) {
        dismiss(animated: true)
        guard let index = storedSubviews.firstIndex(where: { $0 === sender }) else { return }
        buttonModels[index].handler?()
    }
}
