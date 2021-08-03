//
//  UIView+Accesibility.swift
//  FinService
//
//  Created by Максуд Даудов on 08.04.2020.
//  Copyright © 2020 MTS IT. All rights reserved.
//

import UIKit

public extension UIView {
  func setAccessibility(id: String) {
    enableAccessibility()
    accessibilityIdentifier = id
  }
  func enableAccessibility() {
    isAccessibilityElement = true
  }
}
@propertyWrapper
public struct Accessibility<T: UIView> {
  let accessibilityIdentifier: String
  let isAccessibilityElement: Bool
  var view: T?
  public init(_ accessibilityIdentifier: String, _ isAccessibilityElement: Bool = true) {
    self.accessibilityIdentifier = accessibilityIdentifier
    self.isAccessibilityElement = isAccessibilityElement
  }
  public var wrappedValue: T? {
    get {
      view
    }
    set {
      view = newValue
      view?.accessibilityIdentifier = accessibilityIdentifier
      view?.isAccessibilityElement = isAccessibilityElement
    }
  }
}
