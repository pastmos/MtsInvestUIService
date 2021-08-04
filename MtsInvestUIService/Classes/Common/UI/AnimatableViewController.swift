//
//  AnimatableViewController.swift
//  FinService
//
//  Created by Semyon on 10/14/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import UIKit

class AnimatableViewController: BaseViewController, UIGestureRecognizerDelegate {
    
    //MARK: Constants
    private struct Constants {
        static let closeAnimationDuration: TimeInterval = 0.2
    }

    //MARK: Outside requered properties
    var presentationPosition: CGRect = .zero
    var isPanDismissEnabled = false
    var childAnimators = [AnimatableViewController]()

    //MARK: Properties
    private var animator: UIViewPropertyAnimator?
    private var startingYPosition: CGFloat = .zero
    private var isFirstAppear = true
    private var keyboardListener = KeyboardListener.shared

    //MARK: Calculatable properties
    var interceptingScrollView: UIScrollView? {
        return nil
    }

    //MARK: Initialization
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        transitioningDelegate = self
        modalPresentationStyle = .custom
        modalPresentationCapturesStatusBarAppearance = true
    }

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        showIndicators(false)
        addCloseButtonIfNeeded()
        setupGesture()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showIndicators(true)
        guard isFirstAppear else { return }
        isFirstAppear.toggle()
        interceptingScrollView?.setContentOffset(.zero, animated: true)
    }
    
    //MARK: Setup
    private func addCloseButtonIfNeeded() {
        guard navigationController?.viewControllers.count == 1 else { return }
        
        let closeButton = UIBarButtonItem(image: Assets.Images.icFeedCloseCard.image,
                                            style: .plain,
                                            target: self,
                                            action: #selector(handleCloseButton))
        //FIX: Could create problems in future iOS versions
        closeButton.imageInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        navigationItem.leftBarButtonItem = closeButton
    }
    
    private func setupGesture() {
        let dismissalRecognizer = UIPanGestureRecognizer(target: self,
                                                         action: #selector(handleDismissalPan))
        dismissalRecognizer.maximumNumberOfTouches = 1
        dismissalRecognizer.delegate = self
        view.addGestureRecognizer(dismissalRecognizer)
    }

    //MARK: Actions
    @objc private func handleCloseButton() {
        UIView.animate(withDuration: Constants.closeAnimationDuration,
                       animations: { [weak self] in
                        self?.prepareTransform()
        }) {[weak self] isEnded in
            guard isEnded else { return }
            self?.dismiss(animated: true)
        }
    }
    
    @objc private func handleDismissalPan(gesture: UIPanGestureRecognizer) {
        let currentPoint = gesture.location(in: nil)
        switch gesture.state {
        case .began:
            startingYPosition = currentPoint.y
        case .changed:
            let progress = (currentPoint.y - startingYPosition) / 100
            guard progress > .zero else {
                gesture.isEnabled = false
                return
            }

            showIndicators(false)
            let dismissAnimator = getAnimator()
            dismissAnimator.fractionComplete = progress
            guard progress >= 1 else { return }
            dismissAnimator.stopAnimation(false)
            dismissAnimator.addCompletion { [weak self] position in
                guard position == .end else { return }
                self?.dismiss(animated: true)
            }
            dismissAnimator.finishAnimation(at: .end)
        case .ended,
             .cancelled:
            guard let dismissAnimator = animator, dismissAnimator.state != .inactive else {
                gesture.isEnabled = true
                return
            }
            dismissAnimator.pauseAnimation()
            dismissAnimator.isReversed = true
            gesture.isEnabled = false
            dismissAnimator.addCompletion { [weak self] _ in
                self?.showIndicators(true)
                self?.animator = nil
                gesture.isEnabled = true
            }
            dismissAnimator.startAnimation()
        default:
            break
        }
    }

    //MARK: Helpers
    private func showIndicators(_ show: Bool) {
        interceptingScrollView?.showsVerticalScrollIndicator = show
        interceptingScrollView?.showsHorizontalScrollIndicator = show
    }

    private func getAnimator() -> UIViewPropertyAnimator {
        if let dismissAnimator = animator {
            return dismissAnimator
        }
        animator = UIViewPropertyAnimator(duration: .zero,
                                          curve: .linear) { [weak self] in
                                            self?.prepareTransform()
        }
        animator!.pauseAnimation()
        return animator!
    }
    
    private func prepareTransform() {
        guard presentationPosition.width != .zero else { return }
        let viewToDissmis = navigationController ?? self
        let scale = presentationPosition.width / view.frame.width
        viewToDissmis.view.transform = .init(scaleX: scale, y: scale)
        viewToDissmis.view.layer.cornerRadius = 16
    }
    
    //MARK: UIGestureRecognizerDelegate
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                           shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        guard isPanDismissEnabled else  { return false }
        guard !childAnimators.isEmpty else { return shouldHandleDismissWith(gesture: gestureRecognizer) }
        let responder = childAnimators.first{ $0.isViewLoaded &&
                                              $0.view.window != nil &&
                                              !$0.shouldHandleDismissWith(gesture: gestureRecognizer)}
        return responder == nil
    }
    
    //MARK: UIGestureRecognizer helper
    func shouldHandleDismissWith(gesture: UIGestureRecognizer) -> Bool {
        guard !keyboardListener.isVisible else { return false }
        guard let interceptView = interceptingScrollView else { return true }
        return interceptView.contentOffset.y <= .zero
    }
}

//MARK: UIViewControllerTransitioningDelegate
extension AnimatableViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ShowcaseAnimatedPresenter(rect: presentationPosition)
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ShowcaseAnimatedDismisser(rect: presentationPosition)
    }
}

