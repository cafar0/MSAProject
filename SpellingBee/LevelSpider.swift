//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelSpider : Level {
    
    override init() {
        super.init()
        imageView = UIImage(named: "spider")
        completeWord   = ["s","p","i","d","e", "r"]
        incompleteWord = ["s","_","_","d","_", "r"]
        options        = ["a", "s", "r", "t", "d", "n" , "a", "e", "i", "h", "l", "p"]
        

    }

}
