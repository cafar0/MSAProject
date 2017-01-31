//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelCat : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "cat")
		completeWord   = ["c","a","t"]
		incompleteWord = ["_","a","_"]
		options        = ["b","e","m","g","c","t","p","u","a","n","r","s","l"]
	}
}
