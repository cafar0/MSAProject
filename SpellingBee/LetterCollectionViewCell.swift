//
//  LetterCollectionViewCell.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class LetterCollectionViewCell: UICollectionViewCell {

    var letter : String?
    
    @IBOutlet weak var letterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
