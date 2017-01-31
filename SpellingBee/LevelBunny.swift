//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelBunny : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "bunny")
		completeWord   = ["b","u","n","n","y"]
		incompleteWord = ["b","_","_","n","_"]
		options        = ["b","e","m","g","p","a","y","l","r","n","u","s"]
	}
}
