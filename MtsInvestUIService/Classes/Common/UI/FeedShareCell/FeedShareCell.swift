//
//  FeedShareCell.swift
//  FinService
//
//  Created by Максуд Даудов on 08/10/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit
import AlamofireImage
import SkeletonView

typealias FeedSharesConfigurator = TableCellConfigurator<FeedShareCell, FeedShareViewModel>

final class FeedShareViewModel {
    var title: String
    let description: String
    let originalId: String
    let currency: Currency
    
    private(set) var price: Double?
    private(set) var growth: Double?
    
    var logoURL: URL? {
        ImageUrlBuilder.instrumentLogoURLFor(instrumentID: originalId, withError: true)
    }
    
    var onUpdate: ((FeedShareViewModel) -> Void)?
    
    required init(title: String,
                  description: String,
                  originalId: String,
                  price: Double,
                  growth: Double,
                  currency: Currency) {
        self.title = title
        self.description = description
        self.originalId = originalId
        self.price = price
        self.growth = growth
        self.currency = currency
    }
}

final class FeedShareCell: UITableViewCell, ConfigurableCell, SkeletonSupportable {
    
    private struct Constants {
        static let imageCornerRadius: CGFloat = 18
        static let profitRounding = 2
		static let firstCharacterPosition = 1
    }
    
    var onAction: (() -> Void)?
    
    // MARK: Outlets
	@IBOutlet private var iconNilLabel: UILabel!
	@IBOutlet private var iconView: UIImageView!
    @IBOutlet private var titleView: UILabel!
    @IBOutlet private var shortNameView: UILabel!
    @IBOutlet private var valueView: UILabel!
    @IBOutlet private var profitView: UILabel!
    
    private var id: String = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        iconView.layer.masksToBounds = true
        iconView.makeRound(corners: .allCorners, radius: Constants.imageCornerRadius)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconView.image = nil
    }
    
    // MARK: ConfigurableCell
    func configure(data: FeedShareViewModel) {
        id = data.originalId
        titleView.text = data.title
        shortNameView.text = data.description
        partialUpdate(data: data)
        data.onUpdate = {[weak self] model in
            self?.partialUpdate(data: model)
        }
			
		if let logoURL = data.logoURL {
			if data.title.count > Constants.firstCharacterPosition {
				iconNilLabel.text = String(data.title.prefix(Constants.firstCharacterPosition))
			}
			iconView.setShareIcon(with: logoURL) { [weak self] result in
				switch result {
				case .success():
					self?.iconNilLabel.isHidden = true
				case .failure(_):
					self?.iconNilLabel.isHidden = false
				}
			}
		}
    }
    
    private func partialUpdate(data: FeedShareViewModel) {
        guard id == data.originalId else { return }
        var rounding = Constants.profitRounding
        if data.growth ?? 0 > 5 {
            rounding = 1
        }
        profitView.attributedText = NSAttributedString.profit(for: data.growth,
                                                              mantissaRound: rounding)
        guard let price = data.price else {
            valueView.text = "-"
            return
        }
        
        valueView.attributedText = NSAttributedString.attributedValue(for: price,
                                                                      currency: data.currency,
                                                                      integerColor: .mtsDeepBlue,
                                                                      fractionalColor: .mtsDeepBlue40,
                                                                      integerFont: .mtsSansRegular(size: 16),
                                                                      minimumKeepingFractionDigits: 2,
                                                                      appendPlusSign: false)

        layoutIfNeeded()
    }
    
    // MARK: SkeletonSupportable
    func startAnimations(_ start: Bool) {
        [iconView, titleView, shortNameView].forEach {
            start ? $0?.showAnimatedGradientSkeleton() : $0?.hideSkeleton()
        }
    }
    
    static func calculateHeightWith(width: CGFloat,
                                    data: FeedShareViewModel) -> CGFloat {
        return 52
    }
}
