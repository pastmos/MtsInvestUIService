//
//  UIImageView+Alamofire.swift
//  FinService
//
//  Created by Григорьев Виктор on 01.03.2021.
//  Copyright © 2021 MTS IT. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

// Temporary decision
// Use NetworkService and get image in interactor/presenter
extension UIImageView {
    
	func setShareIcon(with url: URL,
					  completion: @escaping ((Swift.Result<Void, Error>) -> Void)) {

		AF.request(url).responseImage { response in
			if let error = response.error {
				self.image = nil
				completion(.failure(error))
			}
			switch response.result {
			case .success(let image):
				self.image = image
				completion(.success(()))
			default: break
			}
		}
	}
    
    func setShareIconWithCache(with url: URL,
                      completion: @escaping ((Swift.Result<Void, Error>) -> Void)) {
                
        self.af.setImage(withURL: url, placeholderImage: UIImage(named: url.absoluteString), completion:  { response in
            if let error = response.error {
                completion(.failure(error))
            }
            switch response.result {
            case .success(_):
                completion(.success(()))
            default: break
            }
        })
        
    }
}
