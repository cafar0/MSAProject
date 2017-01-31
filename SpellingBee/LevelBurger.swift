//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelBurger : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "burger")
		completeWord   = ["b","u","r","g","e","r"]
		incompleteWord = ["b","_","_","g","_","r"]
		options        = ["b","e","m","g","p","r","a","l","n","u","s"]
	}
}
