//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelFries : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "fries")
		completeWord   = ["f","r","i","e","s"]
		incompleteWord = ["f","_","i","_","_"]
		options        = ["e","i","m","t","h","p","f","a","l","r","c","n","k","s"]
	}
}
