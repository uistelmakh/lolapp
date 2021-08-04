//
//  HeaderCategoryCollectionReusableView.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 03.08.2021.
//

import UIKit

class HeaderCategoryCollectionReusableView: UICollectionReusableView {
    static let identifier = "HeaderCollectionReusableView"
    
    var label = UILabel()
    
    func configure() {
        label.text = "Как будем проводить время?"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.frame = bounds
        label.numberOfLines = 0
        addSubview(label)
        
    }
}
