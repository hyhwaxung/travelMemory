//
//  RegisterView.swift
//  travelMemory
//
//  Created by 정현화 on 2023/08/05.
//

import UIKit

class RegisterView: UIView {
    
    lazy var registerScrollView: RegisterScrollView = {
        let scrollView = RegisterScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize.height = 800
        scrollView.backgroundColor = UIColor.white
        scrollView.layer.borderColor = UIColor.black.cgColor
        scrollView.layer.borderWidth = 0.7
        scrollView.showsVerticalScrollIndicator = false
        
        return scrollView
    }()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = UIColor.white
        
        setupView(element: registerScrollView, top: 100, right: 0, bottom: -80, left: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class RegisterScrollView: UIScrollView {
    
    public let insertDateLabel = UILabel()
    public let placeLabel = UILabel()
    public let addressLabel = UILabel()
    
    init() {
        super.init(frame: .zero)
        setupView(element: insertDateLabel, left: 20)
        insertDateLabel.text = "2023.08.14"
        insertDateLabel.textColor = .lightGray
        insertDateLabel.font = UIFont.systemFont(ofSize: 16)
        insertDateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 40).isActive = true
        
        setupView(element: placeLabel, left: 20)
        placeLabel.text = "스타벅스 R"
        placeLabel.textColor = .black
        placeLabel.font = UIFont.systemFont(ofSize: 24)
        placeLabel.topAnchor.constraint(equalTo: insertDateLabel.bottomAnchor, constant: 2).isActive = true
        
        setupView(element: addressLabel, left: 20)
        addressLabel.text = "서울특별시 강서구 마곡동로 62"
        addressLabel.textColor = .gray
        addressLabel.font = UIFont.systemFont(ofSize: 16)
        addressLabel.topAnchor.constraint(equalTo: placeLabel.bottomAnchor, constant: 8).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
