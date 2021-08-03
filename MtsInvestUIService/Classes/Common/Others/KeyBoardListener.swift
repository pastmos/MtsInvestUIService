//
//  KeyBoardListener.swift
//  FinService
//
//  Created by Никита Елизаров on 16.01.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

final class KeyboardListener {
    public static let shared = KeyboardListener()
    var isVisible = false

    private init() {
        startKeyboardListener()
    }

    deinit {
        removeKeyboardNotifications()
    }
    
    private func startKeyboardListener() {
        [(NSNotification.Name.UIKeyboardWillShow, #selector(didShow)),
         (NSNotification.Name.UIKeyboardWillHide, #selector(didHide))].forEach {
            NotificationCenter.default.addObserver(self,
                                                   selector: $0.1,
                                                   name: $0.0,
                                                   object: nil)
        }
    }

    private func removeKeyboardNotifications() {
        [NSNotification.Name.UIKeyboardWillShow,
         NSNotification.Name.UIKeyboardWillHide].forEach {
            NotificationCenter.default.removeObserver(self,
                                                      name: $0,
                                                      object: nil)
        }
    }

    @objc private func didShow() {
        isVisible = true
    }

    @objc private func didHide() {
        isVisible = false
    }
}
