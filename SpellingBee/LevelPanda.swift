//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelPanda : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "panda")
		completeWord   = ["p","a","n","d","a"]
		incompleteWord = ["p","_","n","_","_"]
		options        = ["e","i","g","t","h","p","o","d","a","l","r","u","n","k","s"]
	}
}
