//
//  LevelSpider.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//


import Foundation
import UIKit

class LevelButterfly : Level{
	override init(){
		super.init()
		imageView = UIImage(named: "butterfly")
		completeWord   = ["b","u","t","t","e","r","f","l","y"]
		incompleteWord = ["_","_","_","t","_","r","_","_","y"]
		options        = ["e","i","o","m","t","f","b","a","n","r","y","l","u"]
	}
}
