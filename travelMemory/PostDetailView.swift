//
//  PostDetailView.swift
//  travelMemory
//
//  Created by 정현화 on 2023/08/20.
//

import UIKit

class PostDetailView: UIView {
    
    public let placeTitleLabel = UILabel()
    
    init(){
        super.init(frame: .zero)
        self.backgroundColor = .white
        
        setupView(element: placeTitleLabel, top: 48, left: 24)
        placeTitleLabel.font = UIFont.systemFont(ofSize: 24)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setPostDetail(post: Post) {
        placeTitleLabel.text = post.placeTitle
    }
}
