//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelAnt : Level{
    
	override init(){
		super.init()
		imageView = UIImage(named: "ant")
		completeWord   = ["a","n","t"]
		incompleteWord = ["_","_","t"]
		options        = ["e","i","o","m","t","h","a","n","k","s"]
	}
}
