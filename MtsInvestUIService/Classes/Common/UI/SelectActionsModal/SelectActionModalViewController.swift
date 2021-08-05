//
//  SelectActionModalViewController.swift
//  FinService
//
//  Created by Sergey Panov on 18.02.2021.
//  Copyright © 2021 MTS IT. All rights reserved.
//

import UIKit

protocol SelectActionModalOutput: class {
    func onAction(data: Any?)
    func onCustomAction(data: Any?)
    func onClose()
}

protocol SelectActionModalViewControllerProtocol {
    func configure(type: ActionModalType, output: SelectActionModalOutput, viewData: SelectActionModalViewData, isClosable: Bool, data: Any?)
}

class SelectActionModalViewController: UIViewController, SelectActionModalViewControllerProtocol {
    
    private struct Const {
        static let actionsInitialBottomConstraint: CGFloat = 700
        static let actionsFinalBottomConstraint: CGFloat = -8
        static let actionsLeftConstraint: CGFloat = 8
        static let actionsRightConstraint: CGFloat = -8
        
        static let transparencyDuration = 0.2
        static let slidingDuration = 0.3
    }
    
    weak var output: SelectActionModalOutput?
    
    private var viewData: SelectActionModalViewData?
    private var data: Any?
    private var type: ActionModalType?
    
    private var blurView = UIView()
    private var darkView = UIView()
    private var actionsView: SelectActionView?
    private var isClosable: Bool = true
    
    var calculatedBottomConstraint: CGFloat = 0
    lazy var bottomConstraint = actionsView?.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Const.actionsInitialBottomConstraint)
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        addTapRecognizer()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fadeInAppear()
    }
    
    private func setupViews() {
        blurView.applyBlurEffect(style: .light, alpha: 1)
        view.addSubview(blurView)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        self.view.constraintToBounds(view: blurView)
        
        
        darkView.backgroundColor = Assets.Colors.backgroundOverlay.color
        view.addSubview(darkView)
        darkView.translatesAutoresizingMaskIntoConstraints = false
        self.view.constraintToBounds(view: darkView)
        
        guard let type = type, let viewData = viewData else {
            return
        }
        
        actionsView = .instantiateFromNib()
        guard let actionsView = actionsView else {
            return
        }
        actionsView.configure(type: type, viewData: viewData, output: self)
        view.addSubview(actionsView)
        actionsView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Const.actionsRightConstraint),
            actionsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Const.actionsLeftConstraint)
        ])
        bottomConstraint?.constant = actionsView.bounds.height
        calculatedBottomConstraint = actionsView.bounds.height
        bottomConstraint?.isActive = true
        
        self.view.alpha = 0
    }
    
    private func addTapRecognizer() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.darkView.addGestureRecognizer(tap)
    }
    
    private func fadeInAppear() {
        UIView.animate(withDuration: Const.transparencyDuration, delay: 0, options: .curveEaseOut) {
            self.view.alpha = 1
        }
        
        self.bottomConstraint?.constant = Const.actionsFinalBottomConstraint
        UIView.animate(withDuration: Const.slidingDuration, delay: Const.transparencyDuration, options: .curveEaseOut) {
            self.view.layoutIfNeeded()
        }
    }
    
    private func fadeOutDisappear(completion: (()->Void)?) {
        self.bottomConstraint?.constant = calculatedBottomConstraint
        UIView.animate(withDuration: Const.slidingDuration, delay: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()

        }, completion: {_ in
            UIView.animate(withDuration: Const.transparencyDuration,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                self.view.alpha = 0
            }, completion: {_ in
                completion?()
            })
        })
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.onClose()
    }

    public func configure(type: ActionModalType = .twoButtonsPicture,
                          output: SelectActionModalOutput,
                          viewData: SelectActionModalViewData,
                          isClosable: Bool = true,
                          data: Any? = nil) {
        self.output = output
        self.viewData = viewData
        self.data = data
        self.type = type
        self.isClosable = isClosable
    }
        
}

extension SelectActionModalViewController: SelectActionModalOutput {
    func onAction(data: Any?) {
        guard isClosable else {
            output?.onAction(data: self.data)
            return
        }
        fadeOutDisappear() { [weak self] in
            self?.dismiss(animated: true) { [weak self] in
                self?.output?.onAction(data: self?.data)
            }
        }
    }
    
    func onCustomAction(data: Any?) {
        guard isClosable else {
            output?.onCustomAction(data: self.data)
            return
        }
        fadeOutDisappear() { [weak self] in
            self?.dismiss(animated: true) { [weak self] in
                self?.output?.onCustomAction(data: self?.data)
            }
        }
    }
    
    func onClose() {
        guard isClosable else {
            output?.onClose()
            return
        }
        fadeOutDisappear() { [weak self] in
            self?.dismiss(animated: true) { [weak self] in
                self?.output?.onClose()
            }
        }
    }
    
    
}
