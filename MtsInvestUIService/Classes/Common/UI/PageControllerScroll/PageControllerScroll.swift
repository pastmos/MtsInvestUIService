//
//  PageControllerScroll.swift
//  FinService
//
//  Created by Semyon on 3/12/20.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

final class PageControllerScroll: UIScrollView {
    
    //MARK: Constants
    private struct Constants {
        static let interItemSpacing: CGFloat = 26
        static let lineHeight: CGFloat = 3
        static let animationDuration: TimeInterval = 0.3
    }
    
    //MARK: Properties
    private let indicatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var storedSubviews = [UIButton]()
    private var onSelection: ((Int) -> Void)?
    
    private var lineWidthConstraint: NSLayoutConstraint?
    private var lineLeadingConstraint: NSLayoutConstraint?
    
    private var previousSelectedIndex = 0
    
    //MARK: Configuration
    func configureFor(items: [String],
                      font: UIFont,
                      selectedColor: UIColor,
                      unselectedColor: UIColor,
                      underlineColor: UIColor,
                      onSelection: ((Int) -> Void)?) {
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        self.onSelection = onSelection
        var constraints = [NSLayoutConstraint]()
        storedSubviews.removeAll()
        self.accessibilityIdentifier = "fundPropertiesScroll"
        self.isAccessibilityElement = false
        
        items.forEach { item in
            let view = buildButtonFor(title: item,
                                      font: font,
                                      selectedColor: selectedColor,
                                      unselectedColor: unselectedColor)
            addSubview(view)
            
            let previousView = storedSubviews.last
            let leading = previousView == nil ?
                view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.interItemSpacing / 2) :
                view.leadingAnchor.constraint(equalTo: previousView!.trailingAnchor,
                                              constant: Constants.interItemSpacing)
            constraints.append(contentsOf: [
                view.topAnchor.constraint(equalTo: topAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor),
                view.heightAnchor.constraint(equalTo: heightAnchor),
                leading
            ])
            storedSubviews.append(view)
        }
        
        guard let last = storedSubviews.last else { return }
        addSubview(indicatorView)
        indicatorView.backgroundColor = underlineColor
        lineWidthConstraint = indicatorView.widthAnchor.constraint(equalToConstant: .zero)
        lineLeadingConstraint = indicatorView.leadingAnchor.constraint(equalTo: leadingAnchor)
        constraints.append(contentsOf: [
            last.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.interItemSpacing / 2),
            
            indicatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
            indicatorView.heightAnchor.constraint(equalToConstant: Constants.lineHeight),
            lineLeadingConstraint!,
            lineWidthConstraint!
        ])
        NSLayoutConstraint.activate(constraints)
    }
    
    //MARK: Helpers
    private func buildButtonFor(title: String,
                                font: UIFont,
                                selectedColor: UIColor,
                                unselectedColor: UIColor) -> UIButton {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.titleLabel?.font = font
        view.titleLabel?.numberOfLines = .zero
        view.titleLabel?.textAlignment = .center
        view.setTitle(title, for: .normal)
        view.setTitleColor(unselectedColor, for: .normal)
        view.setTitleColor(selectedColor, for: .selected)
        view.addTarget(self, action: #selector(handleSelection), for: .touchUpInside)
        view.accessibilityIdentifier = "fundPropertyButton"
        return view
    }
    
    //MARK: Actions
    @objc private func handleSelection(sender: UIButton) {
        guard let index = storedSubviews.firstIndex(where: {$0 == sender}) else { return }
        onSelection?(index)
    }
}

//MARK: Selection
extension PageControllerScroll {
    func transitionTo(index: Int,
                      drivenPercentage: CGFloat = 1, isSeparateScroll: Bool = false) {
        layoutIfNeeded()
        let jumpDifference = abs(index - previousSelectedIndex)
        guard drivenPercentage < 1,
            jumpDifference == 1 else {
            animateSelectionFor(index: index, difference: jumpDifference, isSeparateScroll: isSeparateScroll)
                return
        }
        let sizeModel = requiredSizesFor(index: index, drivenPercentage: drivenPercentage)
        lineWidthConstraint?.constant = sizeModel.width
        lineLeadingConstraint?.constant = sizeModel.leading
        if let offset = sizeModel.offset {
            contentOffset = offset
        }
        UIView.animate(withDuration: 0.5) {
            self.layoutIfNeeded()
        }
    }
    
    private func animateSelectionFor(index: Int,
                                     difference: Int, isSeparateScroll: Bool) {
        let previousItem = storedSubviews[previousSelectedIndex]
        let item = storedSubviews[index]
        
        let isLeftDirection = index < previousSelectedIndex
        let appending = isLeftDirection ? index - 1 : index + 1
        let finalIndex = min(max(0, appending), storedSubviews.count - 1)
        let appendingFrame = finalIndex == index
            ? Constants.interItemSpacing / 2
            : (storedSubviews[finalIndex].frame.width / 2) + Constants.interItemSpacing
        
        let duration = (difference > 1) || isSeparateScroll ? Constants.animationDuration : .zero
        let minOffsetX = item.frame.minX - appendingFrame
        let maxOffsetX = item.frame.maxX + appendingFrame
        
        UIView.animate(withDuration: duration) {[weak self, weak item] in
            guard let `self` = self,
                let `item` = item else { return }
            self.lineWidthConstraint?.constant = item.frame.width + Constants.interItemSpacing
            self.lineLeadingConstraint?.constant = item.frame.minX - Constants.interItemSpacing / 2
            if difference > 1 {
                if minOffsetX  < self.contentOffset.x {
                    self.contentOffset = CGPoint(x: minOffsetX, y: .zero)
                }
                if maxOffsetX > self.contentOffset.x + self.bounds.width {
                    let rest = maxOffsetX - (self.contentOffset.x + self.bounds.width)
                    self.contentOffset = CGPoint(x: self.contentOffset.x + rest, y: .zero)
                }
            }
            self.layoutIfNeeded()
        }
        
        previousItem.isSelected = false
        item.isSelected = true
        previousSelectedIndex = index
    }
}

//MARK: Calculations
extension PageControllerScroll {
    
    struct OffsetModel {
        let leading: CGFloat
        let width: CGFloat
        let offset: CGPoint?
    }
    
    private func requiredSizesFor(index: Int,
                                  drivenPercentage: CGFloat = 1) -> OffsetModel {
        let isLeftDirection = index < previousSelectedIndex
        let leading = requiredLeadingfFor(isLeftDirection: isLeftDirection,
                                          index: index,
                                          drivenPercentage: drivenPercentage)
        let width = requiredWidthFor(index: index, drivenPercentage: drivenPercentage)
        let offset = requiredOffsetFor(isLeftDirection: isLeftDirection,
                                       leading: leading,
                                       width: width,
                                       index: index,
                                       drivenPercentage: drivenPercentage)
        return OffsetModel(leading: leading, width: width, offset: offset)
    }
    
    private func requiredWidthFor(index: Int,
                                  drivenPercentage: CGFloat = 1) -> CGFloat {
        let previousItem = storedSubviews[previousSelectedIndex]
        let item = storedSubviews[index]
        
        let difference = item.bounds.width - previousItem.bounds.width
        let isGreater = difference > 0
        let absoluteDiff = abs(difference)
        let delta = absoluteDiff * drivenPercentage
        return (isGreater ?
            previousItem.bounds.width + delta :
            previousItem.bounds.width - delta) + Constants.interItemSpacing
    }
    
    private func requiredLeadingfFor(isLeftDirection: Bool,
                                     index: Int,
                                     drivenPercentage: CGFloat = 1) -> CGFloat {
        let previousItem = storedSubviews[previousSelectedIndex]
        let item = storedSubviews[index]
        let desiredItem = isLeftDirection ? item : previousItem
        let driven = (desiredItem.frame.width + Constants.interItemSpacing) * drivenPercentage
        let preCalculation = previousItem.frame.minX - Constants.interItemSpacing / 2
        return isLeftDirection ?  preCalculation - driven : preCalculation  + driven
    }
    
    private func requiredOffsetFor(isLeftDirection: Bool,
                                   leading: CGFloat,
                                   width: CGFloat,
                                   index: Int,
                                   drivenPercentage: CGFloat = 1) -> CGPoint? {
        let appending = isLeftDirection ? index - 1 : index + 1
        let finalIndex = min(max(0, appending), storedSubviews.count - 1)
        let widthAppend = finalIndex != index
            ? storedSubviews[finalIndex].frame.width * drivenPercentage
            : .zero
        
        let minOffset = leading - widthAppend
        if minOffset < contentOffset.x && isLeftDirection {
            return CGPoint(x: minOffset, y: .zero)
        }
        
        let maxOffset = leading + width + widthAppend
        if maxOffset > contentOffset.x + bounds.width && !isLeftDirection {
            let rest = leading + width + widthAppend - (contentOffset.x + bounds.width)
            return CGPoint(x: contentOffset.x + rest, y: .zero)
        }
        
        return nil
    }
}
