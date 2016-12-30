//
//  LevelSnail.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelSnail : InsectLevel {
    
    override init() {
        super.init()
        imageView = UIImage(named: "rock")
        completeWord   = ["s","n","a","i","l"]
        incompleteWord = ["s","_","a","_","l"]
        options        = ["a", "s", "r", "t", "n" , "a", "e", "i", "h", "l"]

    }
    
    override func isLevelComplete() -> Bool {
        for index in 0 ... completeWord.count-1 {
            if incompleteWord[index] != completeWord[index]{
                return false
            }
        }
        return true
    }
}
