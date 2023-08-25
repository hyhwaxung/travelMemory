//
//  RateView.swift
//  travelMemory
//
//  Created by 정현화 on 2023/08/25.
//

import UIKit

class RateView: UIView {
    
    var starNumber: Int = 5 {
        didSet { bind() }
    }
    var currentStar: Int = 0
    
    private var starButtons: [UIButton] = []
    
    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 2
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var starFilledImage: UIImage? = {
        return UIImage(systemName: "star.fill")?.withTintColor(.green, renderingMode: .alwaysOriginal)
    }()
    
    lazy var starImage: UIImage? = {
        return UIImage(systemName: "star")?.withTintColor(.green, renderingMode: .alwaysOriginal)
    }()
    
    init(){
        super.init(frame: .zero)
        self.backgroundColor = .clear
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        starNumber = 5
        addSubViews()
        setupLayout()
    }
    
    private func addSubViews() {
        addSubview(stackView)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    }
    
    func bind() {
        for i in 0..<5 {
            let button = UIButton()
            button.setImage(starImage, for: .normal)
            button.tag = i
            starButtons += [button]
            stackView.addArrangedSubview(button)
            button.addTarget(self, action: #selector(didTapButton(sender:)), for: .touchUpInside)
        }
    }
    
    @objc
    private func didTapButton(sender: UIButton) {
        let end = sender.tag
        
        for i in 0...end {
            starButtons[i].setImage(starFilledImage, for: .normal)
        }
        
        for i in end + 1..<starNumber {
            starButtons[i].setImage(starImage, for: .normal)
        }
        
        currentStar = end + 1
    }
}
