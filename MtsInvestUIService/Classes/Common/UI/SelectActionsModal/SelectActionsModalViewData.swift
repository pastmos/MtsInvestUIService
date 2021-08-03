//
//  SelectActionsModalViewData.swift
//  FinService
//
//  Created by Sergey Panov on 19.02.2021.
//  Copyright © 2021 MTS IT. All rights reserved.
//

import UIKit

struct SelectActionModalViewData {
    var title: String
    var description: String
    var image: UIImage?
    var actionButtonTitle: String
    var closeButtonTitle: String
    var customActionButtonTitle: String
    
    init(title: String,
         description: String,
         image: UIImage? = R.image.attentionCircleOrangeIcon(),
         actionButtonTitle: String = R.string.localizable.bondPlacementSelectActionModalDefaultActionButtonTitle(),
         closeButtonTitle: String = R.string.localizable.bondPlacementSelectActionModalDefaultCloseButtonTitle(),
         customActionButtonTitle: String = "") {
        self.title = title
        self.description = description
        self.image = image
        self.actionButtonTitle = actionButtonTitle
        self.closeButtonTitle = closeButtonTitle
        self.customActionButtonTitle = customActionButtonTitle
    }
}

enum ActionModalType {
    case oneButtonPicture
    case twoButtonsPicture
    case threeButtonsPicture
    case oneButton
    case twoButtons
    case threeButtons
}
