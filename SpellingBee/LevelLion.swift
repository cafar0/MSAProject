//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import Foundation
import UIKit

class LevelLion : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "lion")
		completeWord   = ["l","i","o","n"]
		incompleteWord = ["_","_","_","n"]
		options        = ["e","i","g","t","h","b","o","l","r","n","k","s"]
	}
}
