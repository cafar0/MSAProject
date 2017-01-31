//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelMosquito: Level{
	override init(){
		super.init()
		imageView = UIImage(named: "mosquito")
		completeWord   = ["m","o","s","q","u","i","t","o"]
		incompleteWord = ["_","_","_","q","u","_","_","o"]
		options        = ["q","i","o","b","u","m","h","a","g","s","o","l","u","t"]
	}
}
