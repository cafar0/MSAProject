//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelMantis : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "mantis")
		completeWord   = ["m","a","n","t","i","s"]
		incompleteWord = ["_","_","n","_","_","s"]
		options        = ["e","i","o","m","t","f","h","a","n","r","s","l"]
	}
}
