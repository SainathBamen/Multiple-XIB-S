//
//  MyCollectionViewCell.swift
//  Multiple XIBs
//
//  Created by sainath bamen on 30/01/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var tshirtImage: UIImageView!
    
    @IBOutlet weak var tsirtLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
