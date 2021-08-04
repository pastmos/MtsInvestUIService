//
//  UIColor+FinService.swift
//  FinService
//
//  Created by Дмитрий on 17.08.17.
//  Copyright © 2017 MTS IT. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let brandBookColors: [UIColor] = [.mtsDarkSkyBlue,
                                             .mtsKiwi,
                                             .mtsBurntSienna,
                                             .mtsWatermelon,
                                             .mtsIndigoBlue,
                                             .mtsGreyChateau,
                                             .mtsBrightCyan,
                                             .mtsPurplishRed,
                                             .mtsMacaroniAndCheese,
                                             .mtsSpruce,
                                             .mtsDustyOrange,
                                             .mtsRed,
                                             .mtsWarmPurple,
                                             .mtsAlgaeGreen,
                                             .mtsDeepBlue]
    
    /// # RGB: 255 255 255
    /// # HEX: FFFFFF
    static let mtsPureWhite = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    /// # RGB: 255 255 255 0.6
    /// # HEX: FFFFFF 0.6
    static let mtsPureWhite60 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)
    
    /// # RGB: 14 208 0
    /// # HEX: 0ED000
    static let fsPositive = #colorLiteral(red: 0.05490196078, green: 0.8156862745, blue: 0, alpha: 1)
    
    /// # RGB: 209 48 67
    /// # HEX: D13043
    static let fsNegative = #colorLiteral(red: 0.8196078431, green: 0.1882352941, blue: 0.262745098, alpha: 1)
    
    /// # RGB: 64 80 100
    /// # HEX: 545064
    static let mtsBlueGreyGradientStart = #colorLiteral(red: 0.2509803922, green: 0.3137254902, blue: 0.3921568627, alpha: 1)
    
    /// # RGB: 32 45 61
    /// # HEX: 202D3D
    static let mtsBlueGreyGradientEnd = #colorLiteral(red: 0.1254901961, green: 0.1764705882, blue: 0.2392156863, alpha: 1)
    
    /// # RGB: 250 217 97
    /// # HEX: FAD961
    static let mtsOrangeGradientStart = #colorLiteral(red: 0.9803921569, green: 0.8509803922, blue: 0.3803921569, alpha: 1)
    
    /// # RGB: 247 177 28
    /// # HEX: F7B11C
    static let mtsOrangeGradientEnd = #colorLiteral(red: 0.968627451, green: 0.6941176471, blue: 0.1098039216, alpha: 1)
    
    /// # RGB: 174 76 11
    /// # HEX: AE4C0B
    static let mtsBurntSienna = #colorLiteral(red: 0.6823529412, green: 0.2980392157, blue: 0.0431372549, alpha: 1)

    /// # RGB: 250 192 49
    /// # HEX: FAC031
    static let mtsMacaroniAndCheese = #colorLiteral(red: 0.9803921569, green: 0.7529411765, blue: 0.1921568627, alpha: 1)

    /// # RGB: 255 138 35
    /// # HEX: FF8A23
    static let mtsDustyOrange = #colorLiteral(red: 1, green: 0.5411764706, blue: 0.137254902, alpha: 1)
    
    /// # RGB: 249 87 33
    /// # HEX: F95721
    static let mtsRedishOrange = #colorLiteral(red: 0.9764705882, green: 0.3411764706, blue: 0.1294117647, alpha: 1)
    
    /// # RGB: 0 20 36
    /// # HEX: 001424
    static let mtsDeepBlue = #colorLiteral(red: 0, green: 0.07843137255, blue: 0.1411764706, alpha: 1)
    
    /// # RGB: 0 20 36 0.4
    /// # HEX: 001424 0.4
    static let mtsDeepBlue40 = #colorLiteral(red: 0, green: 0.07843137255, blue: 0.1411764706, alpha: 0.4)
    
    /// # RGB: 130 192 156
    /// # HEX: 82C09C
    @available(*, deprecated, renamed: "mtsDarkMint")
    static let mtsLightGreen = #colorLiteral(red: 0.5098039216, green: 0.7529411765, blue: 0.6117647059, alpha: 1)
    
    /// # RGB: 49 198 36
    /// # HEX: 31C624
    static let mtsNewLightGreen = #colorLiteral(red: 0.1921568627, green: 0.7764705882, blue: 0.1411764706, alpha: 1)
    
    /// # RGB: 81 194 109
    /// # HEX: 51C26D
    static let mtsDarkMint = #colorLiteral(red: 0.3176470588, green: 0.7607843137, blue: 0.4274509804, alpha: 1)
    
    /// # RGB: 38 205 88
    /// # HEX: 26CD58
    static let mtsAlgaeGreen = #colorLiteral(red: 0.1490196078, green: 0.8039215686, blue: 0.3450980392, alpha: 1)
    
    /// # RGB: 175 240 72
    /// # HEX: AFF048
    static let mtsKiwi = #colorLiteral(red: 0.6862745098, green: 0.9411764706, blue: 0.2823529412, alpha: 1)
    
    /// # RGB: 143 227 168
    /// # HEX: 8FE3A8
    static let mtsHospitalGreen = #colorLiteral(red: 0.5607843137, green: 0.8901960784, blue: 0.6588235294, alpha: 1)
    
    /// # RGB: 25 114 106
    /// # HEX: 19726A
    static let mtsBlueGreen = #colorLiteral(red: 0.09803921569, green: 0.4470588235, blue: 0.4156862745, alpha: 1)
    
    /// # RGB: 17 108 41
    /// # HEX: 116C29
    static let mtsSpruce = #colorLiteral(red: 0.06666666667, green: 0.4235294118, blue: 0.1607843137, alpha: 1)
    
    /// # RGB: 227 6 17
    /// # HEX: E30611
    static let mtsRed = #colorLiteral(red: 0.8901960784, green: 0.02352941176, blue: 0.06666666667, alpha: 1)
    
    /// # RGB: 218 53 57
    /// # HEX: DA3539
    static let mtsFadedRed = #colorLiteral(red: 0.8549019608, green: 0.2078431373, blue: 0.2235294118, alpha: 1)
    
    /// # RGB: 255 135 141
    /// # HEX: FF878D
    static let mtsLightFadedRed = #colorLiteral(red: 1, green: 0.5294117647, blue: 0.5529411765, alpha: 1)
    
    /// # RGB: 213 111 114
    /// # HEX: D56F72
    static let mtsLightRed = #colorLiteral(red: 0.8352941176, green: 0.4352941176, blue: 0.4470588235, alpha: 1)
    
    /// # RGB: 255 60 115
    /// # HEX: FF3C73
    static let mtsWatermelon = #colorLiteral(red: 1, green: 0.2352941176, blue: 0.4509803922, alpha: 1)
    
    /// # RGB: 184 12 97
    /// # HEX: B80C61
    static let mtsPurplishRed = #colorLiteral(red: 0.7215686275, green: 0.04705882353, blue: 0.3803921569, alpha: 1)
    
    /// # RGB: 209 61 64
    /// # HEX: D13D40
    static let mtsBluishRed = #colorLiteral(red: 0.8196078431, green: 0.2392156863, blue: 0.2509803922, alpha: 1)
    
    /// # RGB: 131 39 131
    /// # HEX: 832783
    static let mtsWarmPurple = #colorLiteral(red: 0.5137254902, green: 0.1529411765, blue: 0.5137254902, alpha: 1)
    
    /// # RGB: 218 53 57
    /// # HEX: DA3539
    static let negativeOperation = UIColor.mtsRed
    
    /// # RGB: 187 193 199
    /// # HEX: BBC1C7
    static let neutralOperation = #colorLiteral(red: 0.7333333333, green: 0.7568627451, blue: 0.7803921569, alpha: 1)
    
    /// # RGB: 40 40 90
    /// # HEX: 28285A
    static let mtsStandartBlue = #colorLiteral(red: 0.1568627451, green: 0.1568627451, blue: 0.3529411765, alpha: 1)
    
    /// # RGB: 40 40 90 0.58
    /// # HEX: 28285A 0.58
    static let mtsDarkGreyBlue = #colorLiteral(red: 0.1568627451, green: 0.1568627451, blue: 0.3529411765, alpha: 0.58)
    
    /// # RGB: 199 199 199
    /// # HEX: C7C7C7
    static let mtsDividerGrey = #colorLiteral(red: 0.7803921569, green: 0.7803921569, blue: 0.7803921569, alpha: 1)
    
    /// # RGB: 212 210 209
    /// # HEX: D4D2D1
    static let mtsDividerLightGrey = #colorLiteral(red: 0.831372549, green: 0.8235294118, blue: 0.8196078431, alpha: 1)
    
    /// # RGB: 248 248 248
    /// # HEX: F8F8F8
    static let mtsLightGreyWhite = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
    
    /// # RGB: 198 198 198
    /// # HEX: C6C6C6
    static let mtsVeryLightPink = #colorLiteral(red: 0.7764705882, green: 0.7764705882, blue: 0.7764705882, alpha: 1)
    
    /// # RGB: 159 159 159
    /// # HEX: 9F9F9F
    static let mtsWarmGrey = #colorLiteral(red: 0.6235294118, green: 0.6235294118, blue: 0.6235294118, alpha: 1)
    
    /// # RGB: 179 179 213 0.58
    /// # HEX: B3B3D5 0.58
    static let mtsSemilightGrey = #colorLiteral(red: 0.7019607843, green: 0.7019607843, blue: 0.8352941176, alpha: 0.58)
    
    /// # RGB: 155 155 155
    /// # HEX: 9B9B9B
    static let mtsGrey = #colorLiteral(red: 0.6078431373, green: 0.6078431373, blue: 0.6078431373, alpha: 1)
    
    /// # RGB: 245 246 247
    /// # HEX: F5F6F7
    static let mtsPaleGrey = #colorLiteral(red: 0.9607843137, green: 0.9647058824, blue: 0.968627451, alpha: 1)
    
    /// # RGB: 242 243 247
    /// # HEX: F2F3F7
    static let mtsWhiteSmoke = #colorLiteral(red: 0.9490196078, green: 0.9529411765, blue: 0.968627451, alpha: 1)
    
    /// # RGB: 216 216 216
    /// # HEX: D8D8D8
    static let mtsNewLightGray = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)

    /// # RGB: 110 119 130
    /// # HEX: 6E7782
    static let mtsBattleshipGrey = #colorLiteral(red: 0.431372549, green: 0.4666666667, blue: 0.5098039216, alpha: 1)
    
    /// # RGB: 145 152 160
    /// # HEX: 9198A0
    static let mtsGreyChateau = #colorLiteral(red: 0.568627451, green: 0.5960784314, blue: 0.6274509804, alpha: 1)
    
    /// # RGB: 84 230 232
    /// # HEX: 54E6E8
    static let mtsBrightCyan = #colorLiteral(red: 0.3294117647, green: 0.9019607843, blue: 0.9098039216, alpha: 1)
    
    /// # RGB: 226 229 235
    /// # HEX: e2E5Eb
    static let mtsLinkWater = #colorLiteral(red: 0.8862745098, green: 0.8980392157, blue: 0.9215686275, alpha: 1)
    
    /// # RGB: 72 183 240
    /// # HEX: 48B7F0
    static let mtsDarkSkyBlue = #colorLiteral(red: 0.2823529412, green: 0.7176470588, blue: 0.9411764706, alpha: 1)
    
    /// # RGB: 121 173 229
    /// # HEX: 79ADE5
    static let mtsSkyBlue = #colorLiteral(red: 0.4745098039, green: 0.6784313725, blue: 0.8980392157, alpha: 1)
    
    /// # RGB: 0 124 255
    /// # HEX: 007CFF
    static let mtsDeepSkyBlue = #colorLiteral(red: 0, green: 0.4862745098, blue: 1, alpha: 1)
    
    /// # RGB: 133 135 187
    /// # HEX: 8587BB
    static let mtsLightPurple = #colorLiteral(red: 0.5215686275, green: 0.5294117647, blue: 0.7333333333, alpha: 1)
    
    /// # RGB: 0 124 255
    /// # HEX: 007CFF
    static let mtsBlue = #colorLiteral(red: 0, green: 0.4862745098, blue: 1, alpha: 1)
    
    /// # RGB: 24 20 188
    /// # HEX: 1814BC
    static let mtsIndigoBlue = #colorLiteral(red: 0.09411764706, green: 0.07843137255, blue: 0.737254902, alpha: 1)
    
    /// # RGB: 52 55 141
    /// # HEX: 34378D
    static let mtsBlueBerry = #colorLiteral(red: 0.2039215686, green: 0.2156862745, blue: 0.5529411765, alpha: 1)
}
