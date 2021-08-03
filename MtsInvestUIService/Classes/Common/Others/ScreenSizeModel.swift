//
//  ScreenSizeModel.swift
//  cheaphotels
//
//  Created by Дмитрий on 20.10.16.
//  Copyright © 2016 Дмитрий. All rights reserved.
//

import UIKit

enum ScreenSizeModel: CGFloat {
    
    case phone35 = 480
    case phone40 = 568
    case phone47 = 667
    case phone55 = 736
    case phone58 = 812
    case padModal = 620
    case padH = 768
    case padV = 1024
    case unknown = 0
    
    static var defaultModel: ScreenSizeModel {
        return ScreenSizeModel.phone47
    }
    
}

typealias SizeDictCGFloat = [ScreenSizeModel: CGFloat]
typealias SizeDictString = [ScreenSizeModel: String]
typealias SizeDictInt = [ScreenSizeModel: Int]
