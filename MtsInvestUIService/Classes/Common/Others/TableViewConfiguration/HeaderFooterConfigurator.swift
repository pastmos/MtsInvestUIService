//
//  HeaderFooterConfigurator.swift
//  FinService
//
//  Created by Andrey on 16.06.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

protocol ConfigurableHeaderFooter {
    associatedtype DataType
    func configure(_ data: DataType)
}

protocol HeaderFooterConfigurator {
    static var reuseId: String { get }
    var height: CGFloat { get set }
    func configure(view: UIView)
}

class TableHeaderFooterConfigurator< ViewType: ConfigurableHeaderFooter,
                                     DataType>: HeaderFooterConfigurator
                                     where   ViewType.DataType == DataType,
                                             ViewType: UITableViewHeaderFooterView {
    static var reuseId: String { return String(describing: ViewType.self) }
    var item: DataType
    var height: CGFloat

    init(item: DataType, height: CGFloat) {
        self.item = item
        self.height = height
    }

    func configure(view: UIView) {
        let _view = view as! ViewType
        _view.configure(item)
    }
}

final class ConfigurableTableSection {
    var header: HeaderFooterConfigurator?
    var rows: [CellConfigurator]
    var footer: HeaderFooterConfigurator?
    let isLoading: Bool
    
    init(header: HeaderFooterConfigurator? = .none,
         rows: [CellConfigurator],
         footer: HeaderFooterConfigurator? = .none,
         isLoading: Bool = false) {
        self.header = header
        self.rows = rows
        self.footer = footer
        self.isLoading = isLoading
    }
}
