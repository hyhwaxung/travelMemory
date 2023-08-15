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
        scrollView.contentSize.height = 1000
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
    public let grayLine1 = GrayLine()
    public let gradeButton = GradeButton()
    public let gradeLabel = UILabel()
    public let grayLine2 = GrayLine()
    public let dateTextField = UITextField()
    public let placeTextField = UITextField()
    public let contentTextField = UITextField()
    public let photoButton = UIButton()
    
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
        
        setupView(element: grayLine1, right: -20, left: 20, centerX: 0)
        grayLine1.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 40).isActive = true
        grayLine1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        setupView(element: gradeButton, left: 20)
        gradeButton.topAnchor.constraint(equalTo: grayLine1.bottomAnchor, constant: 15).isActive = true
        
        setupView(element: gradeLabel, right: -20, left: 100)
        gradeLabel.text = "만족도를 선택 해주세요."
        gradeLabel.textColor = .lightGray
        gradeLabel.textAlignment = .right
        gradeLabel.font = UIFont.systemFont(ofSize: 16)
        gradeLabel.topAnchor.constraint(equalTo: grayLine1.bottomAnchor, constant: 20).isActive = true

        setupView(element: grayLine2, right: -20, left: 20, centerX: 0)
        grayLine2.topAnchor.constraint(equalTo: grayLine1.bottomAnchor, constant: 60).isActive = true
        grayLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        setupView(element: dateTextField, right: -20, left: 20)
        dateTextField.text = "날짜 선택"
        dateTextField.addLeftPadding()
        dateTextField.layer.borderColor = UIColor.gray.cgColor
        dateTextField.layer.borderWidth = 1.0
        dateTextField.topAnchor.constraint(equalTo: grayLine2.bottomAnchor, constant: 20).isActive = true
        dateTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        setupView(element: placeTextField, right: -20, left: 20)
        placeTextField.text = "장소 선택"
        placeTextField.addLeftPadding()
        placeTextField.layer.borderColor = UIColor.gray.cgColor
        placeTextField.layer.borderWidth = 1.0
        placeTextField.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 15).isActive = true
        placeTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        setupView(element: contentTextField, right: -20, left: 20)
        contentTextField.text = "Q. 장소에 대한 리뷰를 남겨주세요."
        contentTextField.addLeftPadding()
        contentTextField.layer.borderColor = UIColor.gray.cgColor
        contentTextField.layer.borderWidth = 1.0
        contentTextField.backgroundColor = .lightGray
        contentTextField.topAnchor.constraint(equalTo: placeTextField.bottomAnchor, constant: 15).isActive = true
        contentTextField.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        setupView(element: photoButton, bottom: -20, left: 20)
        photoButton.setTitle("사진 추가", for: .normal)
        photoButton.setTitleColor(UIColor.lightGray, for: .normal)
        photoButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        photoButton.layer.borderColor = UIColor.lightGray.cgColor
        photoButton.layer.borderWidth = 0.5
        photoButton.topAnchor.constraint(equalTo: contentTextField.bottomAnchor, constant: 15).isActive = true
        photoButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        photoButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class GradeButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        
        setImage(UIImage(named: "gradeIcon")?.withRenderingMode(.alwaysOriginal), for: .normal)
        setTitle("0%", for: .normal)
        setTitleColor(UIColor.green, for: .normal)
        
        self.imageView?.contentMode = .scaleAspectFit
        self.imageView?.translatesAutoresizingMaskIntoConstraints = true
        self.imageView?.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.titleLabel?.translatesAutoresizingMaskIntoConstraints = true
        self.titleLabel?.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
        heightAnchor.constraint(equalToConstant: 30).isActive = true
        widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
