//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelSalami : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "salami")
		completeWord   = ["s","a","l","a","m","i"]
		incompleteWord = ["s","_","_","a","_","_"]
		options        = ["b","e","m","g","p","r","a","l","n","u","s","i"]
	}
}
