//
//  StocksStocksModuleAssembly.swift
//  finservice
//
//  Created by Semyon on 08/11/2019.
//  Copyright © 2019 FinService. All rights reserved.
//

import UIKit

protocol Assemble {
    associatedtype InputData
    associatedtype T: UIViewController
    
    func assembly(data: InputData?) -> T
}

open class StocksModule: Assemble {
    
    func assembly(data: Int? = nil) -> StocksViewController {
        
    }
  
}
