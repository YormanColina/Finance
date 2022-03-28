//
//  CollectionViewCell.swift
//  Finanzas
//
//  Created by Jyferson Colina on 14/03/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 18
        layer.shadowOffset = CGSize(width: 1, height: 4)
        layer.shadowOpacity = 0.2
        layer.shadowColor = UIColor.darkGray.cgColor
    }

}
