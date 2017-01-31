//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelGiraffe : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "giraffe")
		completeWord   = ["g","i","r","a","f","f","e"]
		incompleteWord = ["g","_","_","a","_","f","_"]
		options        = ["e","f","g","t","i","p","o","d","a","l","r","n","k","s"]
	}
}
