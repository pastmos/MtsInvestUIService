//
//  BottomSortCell.swift
//  FinService
//
//  Created by Никита Елизаров on 13.02.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

class BottomSortCell: UITableViewCell {
    
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var choiceImage: UIImageView!
        
    static var height: CGFloat { return 40 }
}
