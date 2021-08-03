//
//  StocksCollectionCell.swift
//  FinService
//
//  Created by Semyon on 11/8/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

final class StocksCollectionCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    //MARK: Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(R.nib.stocksCollectionItemCell)
    }
}

extension StocksCollectionCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
