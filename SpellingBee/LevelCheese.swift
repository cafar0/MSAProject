//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelCheese: Level{
	override init(){
		super.init()
		imageView = UIImage(named: "cheese")
		completeWord   = ["c","h","e","e","s","e"]
		incompleteWord = ["c","_","_","e","_","e"]
		options        = ["t","e","i","s","h","g","z","c","n","a","m","p"]
	}
}
