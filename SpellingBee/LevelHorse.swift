//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelHorse : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "horse")
        completeWord   = ["h","o","r","s","e"]
		incompleteWord = ["_","o","_","_","e"]
		options        = ["e","m","g","t","h","p","o","d","a","l","r","n","k","s"]
	}
}
