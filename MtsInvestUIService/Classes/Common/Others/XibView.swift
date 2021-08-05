//
//  XibView.swift
//  FinService
//
//  Created by Andrey on 28/06/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

protocol XibLoadable where Self: UIView {
    var contentView: UIView? { get set }
    
    func setup()
    func loadFromNib() -> UIView?
}

extension XibLoadable {
    func setup() {
        guard let view = loadFromNib() else { return }
        
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
//        NSLayoutConstraint.activate([
//            view.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
//            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
//            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
//        ])
        
        contentView = view
    }
    
    func loadFromNib() -> UIView? {
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: .main)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}

@IBDesignable
class XibView: UIView, XibLoadable {
    var contentView: UIView?
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
}
