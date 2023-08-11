//
//  LoginView.swift
//  travelMemory
//
//  Created by 정현화 on 2023/07/29.
//

import UIKit

class LoginView: UIView {
    
    public let logoImage = UIImageView(image: UIImage(named: "appLogo"))
    public let naverButton = NaverButton()
    public let kakaoButton = KakaoButton()
    public let tmButton = TMButton()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = UIColor.white
        
        setupView(element: logoImage, top: 250, centerX: 0)
        logoImage.widthAnchor.constraint(equalToConstant: 148).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 148).isActive = true
        
        setupView(element: tmButton, right: -30, left: 30, centerX: 0)
        tmButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 148).isActive = true
        
        setupView(element: naverButton, right: -30, left: 30, centerX: 0)
        naverButton.topAnchor.constraint(equalTo: tmButton.bottomAnchor, constant: 10).isActive = true
        
        setupView(element: kakaoButton, right: -30, left: 30, centerX: 0)
        kakaoButton.topAnchor.constraint(equalTo: naverButton.bottomAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class TMButton: UIButton {
    
    init(){
        super.init(frame: .zero)
        setTitle("일반 계정으로 시작하기", for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.0
        
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class NaverButton: UIButton {
    
    init(){
        super.init(frame: .zero)
        setTitle("네이버 계정으로 시작하기", for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.0

        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class KakaoButton: UIButton {
    
    init(){
        super.init(frame: .zero)
        setTitle("카카오 계정으로 시작하기", for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.0

        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
