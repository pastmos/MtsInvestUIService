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
            titleLabel.font = FontFamily.MTSSans.bold.font(size: 20)

            titleLabel.text = Strings.Error.Screen.title
        }
    }
    
    @IBOutlet weak var messageTextView: UITextView! {
        didSet {
            messageTextView.font = FontFamily.MTSSans.regular.font(size: 17)
            messageTextView.textColor = .mtsBattleshipGrey
            messageTextView.setAttributedTextWith(text: Strings.Error.Screen.messageUsFull,
                                                  linkText: Strings.Error.Screen.messageUs,
                                                  linkURLString: "")
            messageTextView.delegate = self
        }
    }
    
    @IBOutlet weak var closeButton: UIButton!{
        didSet {
            closeButton.titleLabel?.font = FontFamily.MTSSans.medium.font(size: 17)
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
        self.dismiss(animated: true)
        return false
    }
}
