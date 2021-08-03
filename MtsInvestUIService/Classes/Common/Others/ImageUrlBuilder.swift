//
//  ImageUrlBuilder.swift
//  FinService
//
//  Created by Andrey on 13.12.2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation
import UIKit.UIScreen


struct ImageUrlBuilder {
    private static let instrumentLogoURLFormat = "%@/file/instrument/logo/%@/png?scale=%@"
	private static let instrumentLogoURLFormatWithError = "%@/file/instrument/logo/%@/png?scale=%@&withError=true"

    private init() { }
	static func instrumentLogoURLFor(instrumentID: String, withError: Bool = false) -> URL? {
        let scale = Int(UIScreen.main.scale)
		var format = withError ? instrumentLogoURLFormatWithError : instrumentLogoURLFormat
		var apiDomain = AppSettings.baseAPIDomain()
		#if QA
			format = instrumentLogoURLFormat
			apiDomain = AppSettings.predProdApiDomain
		#endif
		let absoluteString = String(format: format,
									apiDomain,
                                    instrumentID,
                                    String(scale)).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        return URL(string: absoluteString ?? "")
    }
}
