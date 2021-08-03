//
//  CellConfigurator.swift
//  FinService
//
//  Created by Максуд Даудов on 14.10.2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

protocol ConfigurableCell {
    associatedtype DataType
    
    var onAction: ActionHandler? { get set }
    
    func configure(data: DataType)
    static func calculateHeightWith(width: CGFloat, data: DataType) -> CGFloat
}

extension ConfigurableCell {
    static func calculateHeightWith(width: CGFloat, data: DataType) -> CGFloat {
        return .zero
    }
}

protocol CellConfigurator {
    static var reuseId: String { get }
    var onAction: ActionHandler? { get set }
    func configure(cell: UIView)
    func calculateHeight(width: CGFloat) -> CGFloat
}

class CollectionCellConfigurator<CellType: ConfigurableCell, DataType>: CellConfigurator where CellType.DataType == DataType, CellType: UICollectionViewCell {
    
    static var reuseId: String { return String(describing: CellType.self) }
    
    let item: DataType
    var onAction: ActionHandler?

    init(item: DataType, onAction: ActionHandler? = nil) {
        self.item = item
        self.onAction = onAction
    }

    func configure(cell: UIView) {
        var cell = cell as! CellType
        cell.configure(data: item)
        cell.onAction = onAction
    }
    
    func calculateHeight(width: CGFloat) -> CGFloat {
        CellType.calculateHeightWith(width: width, data: item)
    }
}

class TableCellConfigurator<CellType: ConfigurableCell, DataType>: CellConfigurator where CellType.DataType == DataType, CellType: UITableViewCell {
    static var reuseId: String { return String(describing: CellType.self) }
    
    var item: DataType
    var onAction: ActionHandler?

    init(item: DataType, onAction: ActionHandler? = nil) {
        self.item = item
        self.onAction = onAction
    }

    func configure(cell: UIView) {
        var cell = cell as! CellType
        cell.configure(data: item)
        cell.onAction = onAction
    }
    
    func calculateHeight(width: CGFloat) -> CGFloat {
        CellType.calculateHeightWith(width: width, data: item)
    }
}

/// Протокол для ячейки с настраиваемым действием типа ActionType
protocol ConfigurableActionCell: ConfigurableCell {
    associatedtype ActionType
    
    var onCustomAction: ActionType? { get set }
}

class TableActionCellConfigurator<CellType: ConfigurableActionCell, DataType, ActionType>: CellConfigurator where CellType.DataType == DataType, CellType.ActionType == ActionType, CellType: UITableViewCell {
    
    static var reuseId: String { return String(describing: CellType.self) }
    
    let item: DataType
    var onAction: ActionHandler?
    var onCustomAction: ActionType?
    
    init(item: DataType, onAction: ActionHandler? = nil, onCustomAction: ActionType? = nil) {
        self.item = item
        self.onAction = onAction
        self.onCustomAction = onCustomAction
    }
    
    func configure(cell: UIView) {
        var cell = cell as! CellType
        cell.configure(data: item)
        cell.onAction = onAction
        cell.onCustomAction = onCustomAction
    }
    
    func calculateHeight(width: CGFloat) -> CGFloat {
        CellType.calculateHeightWith(width: width, data: item)
    }
}
