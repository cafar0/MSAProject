//
//  DomainSelectViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 24/11/16.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class DomainSelectViewController: UIViewController {

    var difficultyLevel : String?
    
    @IBOutlet weak var animalsButton: UIButton!
    @IBOutlet weak var plantsButton: UIButton!
    @IBOutlet weak var insectsButton: UIButton!
    
    
    @IBAction func onInsectsButton(_ sender: Any) {
        let levelArray = levelFactory.getInsectLevel()
        
        if difficultyLevel == "easy" {
            let viewController = LevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        if difficultyLevel == "medium" {
            let viewController = MediumLevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if difficultyLevel == "easy"{
            self.view.backgroundColor = UIColor.green
        }
        else if difficultyLevel == "medium"{
            self.view.backgroundColor = UIColor.orange
        }
        else if difficultyLevel == "hard"{
            self.view.backgroundColor = UIColor.red
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
