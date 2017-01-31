//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelPenguin : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "penguin")
		completeWord   = ["p","e","n","g","u","i","n"]
		incompleteWord = ["_","_","n","_","u","_","n"]
		options        = ["e","i","g","p","h","b","o","d","a","l","r","u","n","k","s"]
	}
}
