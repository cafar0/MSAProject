//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelTiger : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "tiger")
		completeWord   = ["t","i","g","e","r"]
		incompleteWord = ["_","i","_","_","r"]
		options        = ["e","z","g","t","h","b","o","d","i","l","r","u","n","k","s"]
	}
}
