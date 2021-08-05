//
//  PageSegmentedControllerAppearance.swift
//  FinService
//
//  Created by Semyon on 3/13/20.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

final class PageSegmentedControllerAppearance {
    
    final class HeaderAppearance {
        let segmentTitleFont: UIFont
        let segmentSelectedColor: UIColor
        let segmentUnselectedColor: UIColor
        let underlineColor: UIColor
        
        required init(segmentTitleFont: UIFont,
                      segmentSelectedColor: UIColor,
                      segmentUnselectedColor: UIColor,
                      underlineColor: UIColor) {
            self.segmentTitleFont = segmentTitleFont
            self.segmentSelectedColor = segmentSelectedColor
            self.segmentUnselectedColor = segmentUnselectedColor
            self.underlineColor = underlineColor
        }
    }
    
    let titleFont: UIFont
    let headerFont: UIFont
    let headerColor: UIColor
    let segmentedTopInset: CGFloat
    let headerAppearance: HeaderAppearance
    
    required init(titleFont: UIFont,
                  headerFont: UIFont,
                  headerColor: UIColor,
                  segmentedTopInset: CGFloat,
                  headerAppearance: HeaderAppearance) {
        self.titleFont = titleFont
        self.headerFont = headerFont
        self.headerColor = headerColor
        self.segmentedTopInset = segmentedTopInset
        self.headerAppearance = headerAppearance
    }
}

//MARK: Predefined configurations
extension PageSegmentedControllerAppearance {
    static var defaultConfiguration: Self {
        return Self(titleFont: FontFamily.MTSSans.medium.font(size: 17),
                    headerFont: FontFamily.MTSSans.bold.font(size: 26),
                    headerColor: .mtsDeepBlue,
                    segmentedTopInset: 7,
                    headerAppearance: .defaultConfiguration)
    }
}

extension PageSegmentedControllerAppearance.HeaderAppearance {
    static var defaultConfiguration: Self {
        return Self(segmentTitleFont: FontFamily.MTSSans.medium.font(size: 17),
                    segmentSelectedColor: Assets.Colors.textHeadline.color,
                    segmentUnselectedColor: Assets.Colors.textTertiary.color,
                    underlineColor: Assets.Colors.controlsPrimaryActive.color)
    }
}
