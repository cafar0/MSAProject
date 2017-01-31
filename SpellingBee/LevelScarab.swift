//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelScarab : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "scarab")
		completeWord   = ["s","c","a","r","a","b"]
		incompleteWord = ["_","c","_","_","a","b"]
		options        = ["e","i","o","b","c","f","h","a","n","r","s","l"]
	}
}
