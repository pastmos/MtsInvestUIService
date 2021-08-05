//
//  LoadingErrorView.swift
//  FinService
//
//  Created by Semyon on 12/10/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

final class LoadingErrorView: XibView, UITextViewDelegate {
    
    var onAction: (() -> Void)?
    var isSmallSized: Bool = false
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionTextView: UITextView! {
        didSet {
            descriptionTextView.delegate = self
        }
    }
    @IBOutlet weak var actionButton: UIButton!
    
    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        if isSmallSized {
            switch UIDevice.current.type {
            case .iPhone5,
                 .iPhone5C,
                 .iPhone5S:
                titleLabel.font = FontFamily.MTSSans.bold.font(size: 17)
                descriptionTextView.font = FontFamily.MTSSans.regular.font(size: 15)
            default:
                titleLabel.font = FontFamily.MTSSans.bold.font(size: 18)
                descriptionTextView.font = FontFamily.MTSSans.regular.font(size: 17)
            }
        }
        descriptionTextView.textColor = .mtsBattleshipGrey
        setupDescription()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    func showActionButton(_ show: Bool) {
        actionButton.isHidden = !show
        actionButton.isEnabled = show
    }
    
    private func setupDescription() {
        // old method crashes on ios 14
        let text = Strings.Error.Screen.messageUsFull
        let linkText = Strings.Error.Screen.messageUs
        let range = (text as NSString).range(of: linkText)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        let attributes: [NSAttributedString.Key : Any] = [
            .font: FontFamily.MTSSans.regular.font(size: UIFont.systemFontSize),
            .foregroundColor: UIColor.mtsBattleshipGrey,
            .paragraphStyle: paragraphStyle
        ]
        let attributedText = NSAttributedString(string: text, attributes: attributes)
        let attributed = NSMutableAttributedString(attributedString: attributedText)
        
        attributed.addAttribute(.link, value: "https://www.google.com", range: range)
        descriptionTextView.attributedText = attributed
    }
    
    @IBAction private func actionButtonTapped() {
        onAction?()
    }
    
//    func textView(_ textView: UITextView,
//                  shouldInteractWith URL: URL,
//                  in characterRange: NSRange,
//                  interaction: UITextItemInteraction) -> Bool {
//        guard let currentNavigation = UIApplication.shared.selectedTabNavigationInCurrentRoot,
//              let viewController: ModuleFactory<FeedbackFormViewController> = ApplicationAssembly.resolveController(FeedbackFormViewController.self) else {
//            return false
//        }
//
//        if let modalController = currentNavigation.topViewController?.presentedViewController {
//            modalController.dismiss(animated: true, completion: nil)
//        }
//        guard let top = currentNavigation.topViewController else { return false }
//        viewController.defaultProduce(from: top,
//                                      disableBackText: true,
//                                      { _, _ in })
//
//        return false
//    }
    
    func fadeIn(_ duration: TimeInterval? = 0.2, onCompletion: (() -> Void)? = nil) {
        self.alpha = 0
        self.isHidden = false
        UIView.animate(withDuration: duration!,
                       animations: { self.alpha = 1 },
                       completion: { (value: Bool) in
                          if let complete = onCompletion { complete() }
                       }
        )
    }

    func fadeOut(_ duration: TimeInterval? = 0.2, onCompletion: (() -> Void)? = nil) {
        UIView.animate(withDuration: duration!,
                       animations: { self.alpha = 0 },
                       completion: { (value: Bool) in
                           self.isHidden = true
                           if let complete = onCompletion { complete() }
                       }
        )
    }
}

