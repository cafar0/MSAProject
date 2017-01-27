//
//  LevelController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 27/01/2017.
//  Copyright © 2017 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelController : UIViewController {

    var levelArray : [Level]?
    var levelIndex : Int?
    var levelModel : Level?
    var totalStars : Int?
    var starArray : [UIImageView] = []
 
    
    func countStars() -> Int {
        var number = 0
        for star in starArray {
            if star.isHidden == false{
                number += 1
            }
        }
        return number
    }
}
