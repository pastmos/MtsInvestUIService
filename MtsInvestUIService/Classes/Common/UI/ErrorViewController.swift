//
//  ErrorViewController.swift
//  FinService
//
//  Created by Максуд Даудов on 31.08.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

class ErrorViewController: BaseViewController {

    @IBOutlet weak var titleLabel: UILabel!{
        didSet {
            titleLabel.font = .mtsSansBold(size: 20)
            titleLabel.text = R.string.localizable.errorScreenTitle()
        }
    }
    
    @IBOutlet weak var messageTextView: UITextView! {
        didSet {
            messageTextView.font = .mtsSansRegular(size: 17)
            messageTextView.textColor = .mtsBattleshipGrey
            messageTextView.setAttributedTextWith(text: R.string.localizable.errorScreenMessageUsFull(),
                                                  linkText: R.string.localizable.errorScreenMessageUs(),
                                                  linkURLString: "")
            messageTextView.delegate = self
        }
    }
    
    @IBOutlet weak var closeButton: UIButton!{
        didSet {
            closeButton.titleLabel?.font = .mtsSansMedium(size: 17)
        }
    }

    @IBAction func closeController(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

//MARK: - UITextViewDelegate
extension ErrorViewController: UITextViewDelegate {
    
    func textView(_ textView: UITextView,
                  shouldInteractWith URL: URL,
                  in characterRange: NSRange,
                  interaction: UITextItemInteraction) -> Bool
    {
        self.dismiss(animated: true) {
            guard let presentingVC = UIApplication.shared.keyWindow?.visibleViewController else { return  }
            let viewController: ModuleFactory<FeedbackFormViewController> = ApplicationAssembly.resolveController(FeedbackFormViewController.self)!
            viewController.defaultProduce(from: presentingVC) { _, _ in }
            
        }
        
        return false
    }
}
