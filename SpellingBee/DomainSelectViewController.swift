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
    }
    
    @IBAction func onFoodButton(_ sender: UIButton) {
        setNextButton(sender : sender)
        selectedImageView.image = UIImage(named: "groceries-256")
        let levelArray = levelFactory.getFoodLevel()
        prepareLevelViewController(with: levelArray)
    }
    
    @IBAction func onAnimalButton(_ sender: UIButton) {
        setNextButton(sender : sender)
        selectedImageView.image = UIImage(named: "dog-256")
        let levelArray = levelFactory.getAnimalLevel()
        prepareLevelViewController(with: levelArray)
    }
    
    @IBAction func onInsectsButton(_ sender: UIButton) {
        setNextButton(sender : sender)
        selectedImageView.image = UIImage(named: "bee-256")
        let levelArray = levelFactory.getInsectLevel()
        prepareLevelViewController(with: levelArray)
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
    private func setNextButton(sender : UIButton) {
        nextButton.isHidden  = false
        nextButton.isEnabled = true
    }
    
    private func prepareLevelViewController(with levelArray: [Level]) {
        var viewController : LevelController = LevelController()
        
        if difficultyLevel == "easy" {
            viewController = LevelViewController()
        }
        if difficultyLevel == "medium" {
            viewController = MediumLevelViewController()
        }
        
        viewController.levelArray = levelArray
        viewController.levelIndex = 0
        viewController.totalStars = 0
        self.levelViewController = viewController
    }
    
    

}
