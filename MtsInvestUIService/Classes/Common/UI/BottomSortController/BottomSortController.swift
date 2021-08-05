//
//  BottomSortController.swift
//  FinService
//
//  Created by Никита Елизаров on 13.02.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

final class BottomSortController: BaseViewController {
    
    //MARK: Constants
    private struct Constants {
        static let contentCornerRadius: CGFloat = 20
        static let buttonCornerRadius: CGFloat = 6
    }
    
    private struct SortingOption {
        var selected: Bool
        var sorting: StocksSorting
    }
    
    // MARK: IBOutlet's
    @IBOutlet private var orderButton: UIButton! {
        didSet {
            orderButton.setTitle(R.string.localizable.stocksSortAscending(), for: .normal)
            orderButton.setImage(R.image.icArrowNeutralUp(), for: .normal)
            
            orderButton.setTitle(R.string.localizable.stocksSortDescending(), for: .selected)
            orderButton.setImage(R.image.icArrowNeutralDown(), for: .selected)
            
            orderButton.centerTextAndImage(spacing: 4)
            orderButton.isSelected = isDescending
        }
    }
    @IBOutlet private var optionsTableView: UITableView!
    @IBOutlet private var applyButton: UIButton! {
        didSet {
            applyButton.layer.masksToBounds = true
            applyButton.layer.cornerRadius = Constants.buttonCornerRadius
            applyButton.setBackgroundColor(.white, for: .normal)
            applyButton.setBackgroundColor(.mtsRed, for: .selected)
            
            applyButton.setTitleColor(.mtsRed, for: .normal)
            applyButton.setTitleColor(.white, for: .selected)
            
            applyButton.setTitle(R.string.localizable.close(), for: .normal)
            applyButton.setTitle(R.string.localizable.authSMSConfirm(), for: .selected)
        }
    }
    @IBOutlet private var resetButton: UIButton!
    @IBOutlet private var contentView: UIView!
    
    @IBOutlet private weak var optionsTableViewHeightConstraint: NSLayoutConstraint!
    
    // MARK: Properties
    var onSelect: ((_ sorting: StocksSorting, _ isDescending: Bool) -> Void)?
    private var sortingOptions = [SortingOption]()
    private var activeSorting: StocksSorting!
    
    private var optionsChanged: Bool = false {
        willSet {
            hideOptionButtons(hide: activeSorting == StocksSorting.none)
        }
    }
    
    private var isDescending: Bool = false {
        didSet {
            orderButton.isSelected = isDescending
        }
    }
    
    // MARK: Initialization
    convenience init(options: [StocksSorting],
                     activeOption: StocksSorting? = nil,
                     activeOptionDescending: Bool? = nil) {
        self.init(nibName: String(describing: BottomSortController.self), bundle: nil)
        
        for option in options {
            sortingOptions.append(SortingOption(selected: false, sorting: option))
        }
        
        if let activeSorting = activeOption {
            self.activeSorting = activeSorting
        }
        
        if let isDescending = activeOptionDescending {
            self.isDescending = isDescending
        }
    }
    
    override init(nibName nibNameOrNil: String?,
                  bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        optionsTableView.tableFooterView = UIView()
        optionsTableView.register(R.nib.bottomSortCell)
        
        hideOptionButtons(hide: activeSorting == StocksSorting.none)
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
        view.addGestureRecognizer(gesture)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        contentView.makeRound(corners: [.topLeft, .topRight], radius: Constants.contentCornerRadius)
                
        optionsTableViewHeightConstraint.constant = optionsTableView.contentSize.height
        
        view.layoutIfNeeded()
    }
    
    private func hideOptionButtons(hide: Bool){
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.orderButton.isHidden = hide
            self?.resetButton.isHidden = hide
            self?.applyButton.isSelected = !hide
        }
    }
    
    // MARK: Touches
    @objc private func panGesture(_ recognizer: UIPanGestureRecognizer) {
        let velocity = recognizer.velocity(in: view)
        
        if recognizer.state == .ended, velocity.y >= 0 {
            dismiss(animated: true)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        guard let location = touch?.location(in: view), !contentView.frame.contains(location) else { return }
        dismiss(animated: true)
    }
    
    //MARK: Actions
    @IBAction private func resetButtonAction() {
        activeSorting = StocksSorting.none
        optionsChanged = true
        hideOptionButtons(hide: true)
        optionsTableView.reloadData()
    }
    
    @IBAction private func setOrderState(_ sender: Any) {
        isDescending.toggle()
        optionsChanged = true
    }
    
    @IBAction private func applyButtonAction() {
        optionsChanged ? onSelect?(activeSorting, isDescending ? true : false) : dismiss(animated: true)
    }
}

// MARK: UITableViewDelegate, UITableViewDataSource
extension BottomSortController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortingOptions.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return BottomSortCell.height
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.bottomSortCell, for: indexPath)!
        
        cell.separatorView.isHidden = (indexPath.row == sortingOptions.count - 1)
        cell.optionLabel.text = sortingOptions[indexPath.row].sorting.title
        cell.choiceImage.isHidden = true
        
        if let activeSorting = activeSorting,
            sortingOptions[indexPath.row].sorting == activeSorting {
            sortingOptions[indexPath.row].selected = true
            cell.choiceImage.isHidden = false
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        activeSorting = sortingOptions[indexPath.row].sorting
        optionsChanged = true
        tableView.reloadData()
    }
}

// MARK: UIViewControllerTransitioningDelegate
extension BottomSortController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimatedPresenter(type: .popOver)
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimatedDismisser(type: .popOver)
    }
}
