//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelSalad: Level{
	override init(){
		super.init()
		imageView = UIImage(named: "salad")
		completeWord   = ["s","a","l","a","d"]
		incompleteWord = ["a","_","_","a","_"]
		options        = ["t","e","d","i","s","g","z","l","n","a","m","p"]
	}
}
