//
//  UIView+GrayLine.swift
//  travelMemory
//
//  Created by 정현화 on 2023/08/15.
//

import UIKit

class GrayLine: UIView {
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .lightGray
        
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 0.1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
