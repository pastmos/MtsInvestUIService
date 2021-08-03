//
//  ViewControllerLifeCycleSupportable.swift
//  FinService
//
//  Created by Semyon on 6/2/20.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import Foundation

@objc protocol ViewControllerLifeCycleSupportable {
    @objc optional func viewDidLoad()
    @objc optional func viewWillAppear()
    @objc optional func viewWillDisappear()
    @objc optional func viewDidDisappear()
}
