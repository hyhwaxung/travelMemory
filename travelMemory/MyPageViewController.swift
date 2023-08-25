//
//  MyPageViewController.swift
//  travelMemory
//
//  Created by 정현화 on 2023/07/31.
//

import UIKit

class MyPageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var textLable = UILabel()
        textLable.text = "마이페이지 화면"
        textLable.textAlignment = .center
        textLable.font = .systemFont(ofSize: 20)
        textLable.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.backgroundColor = .white
        self.view.addSubview(textLable)
        
        textLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
