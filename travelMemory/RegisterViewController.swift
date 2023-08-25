//
//  RegisterViewController.swift
//  travelMemory
//
//  Created by 정현화 on 2023/08/05.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private lazy var rateView: RateView = {
        let view = RateView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(rateView)
        self.rateView.translatesAutoresizingMaskIntoConstraints = false
        self.rateView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 24).isActive = true
        self.rateView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120).isActive = true
        self.rateView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        self.rateView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}

