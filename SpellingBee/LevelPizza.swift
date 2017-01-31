//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelPizza: Level{
	override init(){
		super.init()
		imageView = UIImage(named: "pizza")
		completeWord   = ["p","i","z","z","a"]
		incompleteWord = ["p","_","_","z","_"]
		options        = ["e","i","g","z","n","a","m","p"]
	}
}
