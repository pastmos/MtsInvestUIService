//
//  ProgressHUD.swift
//  FinService
//
//  Created by Никита Елизаров on 12.03.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

public final class ProgressHUD: UIView {
    
    private struct Constants {
        static let timeiInterval = 0.3
    }
    
    @IBOutlet private var containerView: UIView! {
        didSet {
            let blurEffect = UIBlurEffect(style: .prominent)
            let blurredEffectView = UIVisualEffectView(effect: blurEffect)
            let vibrancyEffectView = UIVisualEffectView(effect: UIVibrancyEffect(blurEffect: blurEffect))
            blurredEffectView.frame = containerView.bounds
            vibrancyEffectView.frame = blurredEffectView.bounds
            
            blurredEffectView.contentView.addSubview(vibrancyEffectView)
            containerView.insertSubview(blurredEffectView, belowSubview: activityIndicator)
        }
    }
    
    @IBOutlet private var activityIndicator: UIActivityIndicatorView!
    
    private static let sharedView: ProgressHUD = {
        var view = ProgressHUD.instantiateFromNib()
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        
        return view
    }()
    
    private static var hudWindow: UIWindow?
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public class func showProgressHUD(blocking: Bool = true) {
        ProgressHUD.hudWindow = UIWindow(frame: UIScreen.main.bounds)
        ProgressHUD.hudWindow?.rootViewController = UIViewController()
        //ProgressHUD.hudWindow?.windowLevel = UIWindow.Level.alert + 1
        ProgressHUD.hudWindow?.backgroundColor = .clear
        ProgressHUD.hudWindow?.makeKeyAndVisible()
        
        sharedView.alpha = 0
        sharedView.frame = UIScreen.main.bounds
        ProgressHUD.hudWindow?.rootViewController?.view.addSubview(sharedView)
        ProgressHUD.hudWindow?.isUserInteractionEnabled = blocking
        
        sharedView.activityIndicator.startAnimating()
        
        UIView.animate(withDuration: Constants.timeiInterval) {
            sharedView.alpha = 1
        }
    }
    
    public class func showProgressHUD(on view: UIView) {
        sharedView.alpha = 0
        sharedView.frame = view.bounds
        view.addSubview(sharedView)
        
        sharedView.activityIndicator.startAnimating()
        UIView.animate(withDuration: Constants.timeiInterval) {
            sharedView.alpha = 1
        }
    }
    
    public class func dismissProgressHUD(completion: (()-> Void)? = nil) {
        UIView.animate(withDuration: Constants.timeiInterval, animations: {
            sharedView.alpha = 0
        }) { _ in
            sharedView.removeFromSuperview()
            ProgressHUD.hudWindow?.isHidden = true
            ProgressHUD.hudWindow = nil
            completion?()
        }
    }
}
 
