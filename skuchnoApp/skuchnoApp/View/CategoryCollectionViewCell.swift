//
//  CategoryCollectionViewCell.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 03.08.2021.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CategoryCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
    }
    
    @IBOutlet weak var viewForCell: UIView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageGo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewForCell.layer.cornerRadius = 16
        viewForCell.backgroundColor = UIColor(red: 239.0/255.0, green: 236.0/255.0, blue: 252.0/255.0, alpha: 1.0)
        
        textLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        imageGo.tintColor = UIColor(red: 101.0/255.0, green: 67.0/255.0, blue: 230.0/255.0, alpha: 1.0)
    }
    
    
}
