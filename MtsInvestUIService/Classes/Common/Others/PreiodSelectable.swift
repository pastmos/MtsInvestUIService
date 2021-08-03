//
//  PreiodSelectable.swift
//  FinService
//
//  Created by Semyon on 11/25/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation

protocol IPeriodSelectable: class {
    func presentPeriodSelection(selected: FeedPeriod)
    func updatePeriodTitle(period: FeedPeriod)
}

protocol IPeriodUpdate: class {
    func selectPeriodAction()
    func updatePeriod(_ period: FeedPeriod)
}
