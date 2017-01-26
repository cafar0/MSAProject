//
//  DomainSelectViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 24/11/16.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class DomainSelectViewController: UIViewController {

    var difficultyLevel     : String?
    var levelViewController : UIViewController?
    var difficultyImage     : UIImage?
    
    @IBOutlet weak var animalsButton: UIButton!
    @IBOutlet weak var plantsButton: UIButton!
    @IBOutlet weak var insectsButton: UIButton!
    @IBOutlet weak var selectedImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var difficultyImageView: UIImageView!
    
    @IBAction func onNextButton(_ sender: Any) {
        self.navigationController?.pushViewController(self.levelViewController!, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func onFoodButton(_ sender: UIButton) {
        setNextButton(sender : sender)
        let levelArray = levelFactory.getFoodLevel()
        
        if difficultyLevel == "easy" {
            let viewController = LevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            viewController.totalStars = 0
            self.levelViewController = viewController
        }
        if difficultyLevel == "medium" {
            let viewController = MediumLevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            viewController.totalStars = 0
            self.levelViewController = viewController
        }

    }
    
    @IBAction func onAnimalButton(_ sender: UIButton) {
        setNextButton(sender : sender)
        let levelArray = levelFactory.getAnimalLevel()
        
        if difficultyLevel == "easy" {
            let viewController = LevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            viewController.totalStars = 0
            self.levelViewController = viewController
        }
        if difficultyLevel == "medium" {
            let viewController = MediumLevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            viewController.totalStars = 0
            self.levelViewController = viewController
        }

    }
    @IBAction func onInsectsButton(_ sender: UIButton) {
     
        setNextButton(sender : sender)
        let levelArray = levelFactory.getInsectLevel()
        
        if difficultyLevel == "easy" {
            let viewController = LevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            viewController.totalStars = 0
            self.levelViewController = viewController
        }
        if difficultyLevel == "medium" {
            let viewController = MediumLevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = 0
            viewController.totalStars = 0
            self.levelViewController = viewController
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isHidden = true
        difficultyImageView.image = difficultyImage!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*MARK - Private functions*/
    func setNextButton(sender : UIButton) {
        selectedImageView.image = sender.imageView?.image
        nextButton.isHidden  = false
        nextButton.isEnabled = true
    }

}
