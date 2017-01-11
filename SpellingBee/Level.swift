//
//  InsectLevel.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 30/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class Level: NSObject {

    var imageView      : UIImage?
    var completeWord   : [String] = []
    var incompleteWord : [String] = []
    var options        : [String] = []
    
    
    func isLevelComplete() -> Bool {
        for index in 0 ... completeWord.count-1 {
            if incompleteWord[index] != completeWord[index]{
                return false
            }
        }
        return true
    }

}
