//
//  ModuleFactory.swift
//  FinService
//
//  Created by Rodion Baglay on 17/07/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

public protocol AbstractModuleFactory {
    
    var description: String? { get }
    func produceAny<SourceType>(from: SourceType, _ then: (_ source: SourceType, _ destination: UIViewController, _ navigation: ClearNavigationController) -> Void) where SourceType: UIViewController
}

public struct ModuleFactory<T>: AbstractModuleFactory where T: UIViewController {
    
    public typealias ProducedType = T
    
    public let handler: () -> ProducedType
    public let description: String?
    
    public init(handler: @escaping () -> ProducedType) {
        
        self.init(handler: handler, description: String.init(describing: type(of: ProducedType.self)))
    }
    
    public init(handler: @escaping () -> ProducedType, description: String) {
        self.handler = handler
        self.description = description
    }
    
    public func produceAny<SourceType>(from: SourceType, _ then: (_ source: SourceType, _ destination: UIViewController, _ navigation: ClearNavigationController) -> Void) where SourceType: UIViewController {
        
        return self.produceWrapped(from: from) { s, d, nc in
            then(s, d, nc)
        }
    }
    
    public func produceWrapped<SourceType>(from: SourceType, _ then: (_ source: SourceType, _ destination: ProducedType, _ navigation: ClearNavigationController) -> Void) where SourceType: UIViewController {
        let vc = self.handler()
        let nc = ClearNavigationController(rootViewController: vc)
        
        then(from, vc, nc)
    }
    
    public func wrappedNavigationStack<SourceType>(from: SourceType, _ then: (_ source: SourceType, _ destination: ProducedType) -> Void) where SourceType: UIViewController {
        let vc = self.handler()
        let nc = from.navigationController
        from.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        vc.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        nc?.popToRootViewController(animated: false)
        nc?.pushViewController(vc, animated: false)
        then(from, vc)
    }
    
    public func produceToRoot() {
        let vc = self.handler()
        let nc = vc.navigationController
        nc?.popToRootViewController(animated: false)
    }
    
    public func produce<SourceType>(from: SourceType, _ then: (_ source: SourceType, _ destination: ProducedType) -> Void) where SourceType: UIViewController {
        let vc = self.handler()
        then(from, vc)
    }
    
    public func produceRoot(_ then: (_ destination: ProducedType) -> Void) {
        let vc = self.handler()
        let nc = ClearNavigationController.init(rootViewController: vc)
        UIApplication.shared.delegate?.window??.rootViewController = nc
        then(vc)
    }
    
    public func defaultProduce<SourceType>(from: SourceType, disableBackText: Bool = false, _ then: ((_ source: SourceType, _ destination: ProducedType) -> Void)? = nil) where SourceType: UIViewController {
        let vc = self.handler()
        if disableBackText {
            from.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
            vc.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        } else {
            from.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
            vc.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        }
        
        from.navigationController?.pushViewController(vc, animated: true)
        
        then?(from, vc)
    }
    
    public func modalProduce<SourceType>(from: SourceType, animated: Bool = true, _ then: (_ source: SourceType, _ destination: ProducedType) -> Void) where SourceType: UIViewController {
        let vc = self.handler()
        let nc = ClearNavigationController.init(rootViewController: vc)
        from.navigationController?.present(nc, animated: animated, completion: nil)
        then(from, vc)
    }
    
    public func presentFromTabBar<SourceType>(from: SourceType, then: (_ source: SourceType, _ destination: ProducedType) -> Void) where SourceType: UIViewController {
        
        let vc = self.handler()
        let navigationController = ClearNavigationController(rootViewController: vc)
        navigationController.isStatusBarLight = true
        
        from.present(navigationController, animated: true, completion: nil)
        then(from, vc)
    }
    
    
    public func presentModalProduce<SourceType>(from: SourceType, _ then: (_ source: SourceType, _ destination: ProducedType) -> Void) where SourceType: UIViewController {
        let vc = self.handler()
        from.navigationController?.present(vc, animated: true, completion: nil)
        then(from, vc)
    }
    
    public func presentPopupProduce<SourceType>(from: SourceType, animated: Bool = true, _ then: (_ source: SourceType, _ destination: ProducedType) -> Void) where SourceType: UIViewController {
        let vc = self.handler()
        from.present(vc, animated: animated, completion: nil)
        then(from, vc)
    }
    
    public func produceWindowRoot() {
        let vc = self.handler()
        
        UIApplication.shared.delegate?.window??.rootViewController = vc;
    }
    
    public func produceWindowRoot(_ then: (_ destination: ProducedType) -> Void) {
        let vc = self.handler()
        UIApplication.shared.delegate?.window??.rootViewController = vc;
        then(vc)
    }
}
