//
//  levelFactory.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 30/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class levelFactory: NSObject {

    static func getInsectLevel() -> [InsectLevel] {
     
        let levelArray = [LevelSnail(),
                          LevelSpider()
                         ]
        
        return levelArray
    }
    
    static  func getAnimalLevel() {
        
    }
    
     static func getFruitsLevel() {
        
    }
    
}
