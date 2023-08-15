//
//  UITextField+addPadding.swift
//  travelMemory
//
//  Created by 정현화 on 2023/08/15.
//

import UIKit

extension UITextField {
    
  func addLeftPadding() {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
    self.leftView = paddingView
    self.leftViewMode = ViewMode.always
  }
    
}
