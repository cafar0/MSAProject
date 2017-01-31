//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelBear : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "bear")
		completeWord   = ["b","e","a","r"]
		incompleteWord = ["b","_","_","_"]
		options        = ["b","e","m","g","p","a","l","r","n","s"]
	}
}
