//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelApple : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "apple")
		completeWord   = ["a","p","p","l","e"]
		incompleteWord = ["a","_","p","_","_"]
		options        = ["a","e","m","p","n","s","l"]
	}
}
