//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelBee : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "bee-1")
		completeWord   = ["b","e","e"]
		incompleteWord = ["_","_","e"]
		options        = ["e","i","o","m","t","h","b","n","k","s"]
	}
}

