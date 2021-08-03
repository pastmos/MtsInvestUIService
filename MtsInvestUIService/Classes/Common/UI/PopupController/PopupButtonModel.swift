//
//  PopupButtonModel.swift
//  FinService
//
//  Created by Semyon on 7/24/20.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

final class PopupButtonModel {
    let title: String
    let titleColor: UIColor
    let buttonColor: UIColor
    let handler: (() -> Void)?
    
    required init(title: String,
                  titleColor: UIColor,
                  buttonColor: UIColor,
                  handler: (() -> Void)?) {
        self.title = title
        self.titleColor = titleColor
        self.buttonColor = buttonColor
        self.handler = handler
    }
}

extension PopupButtonModel {
    static var closeButton: PopupButtonModel {
        return PopupButtonModel(title: R.string.localizable.close(),
                                titleColor: .white,
                                buttonColor: .mtsRed,
                                handler: nil)
    }
}
