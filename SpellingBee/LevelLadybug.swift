//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelLadybug: Level{
	override init(){
		super.init()
		imageView = UIImage(named: "ladybug")
		completeWord   = ["l","a","d","y","b","u","g"]
		incompleteWord = ["_","a","_","y","_","u","_"]
		options        = ["e","i","o","b","d","f","h","a","g","r","c","y","l","u"]
	}
}
