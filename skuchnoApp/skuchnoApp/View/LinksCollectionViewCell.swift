//
//  LinksCollectionViewCell.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 05.08.2021.
//

import UIKit

class LinksCollectionViewCell: UICollectionViewCell {

    static let identifier = "LinksCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "LinksCollectionViewCell", bundle: nil)
    }
    @IBOutlet weak var viewForLinksCell: UIView!
    
    @IBOutlet weak var labelForLinks: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewForLinksCell.backgroundColor = UIColor(red: 239.0/255.0, green: 236.0/255.0, blue: 252.0/255.0, alpha: 1.0)
        viewForLinksCell.layer.cornerRadius = 16
        labelForLinks.adjustsFontSizeToFitWidth = true
        labelForLinks.minimumScaleFactor = 0.5
    }
    
    func setupCell(links: Links) {
        labelForLinks.text = links.linkCell
    }

}
