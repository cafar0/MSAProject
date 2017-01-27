//
//  StartViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 24/11/16.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBAction func onEasyButton(_ sender: UIButton) {
        let viewController = BonusLevelViewController()
        viewController.level = 0
        viewController.totalStars = 0
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    @IBAction func onMediumButton(_ sender: UIButton) {
        let viewController = prepareViewController(button : sender, difficulty: "easy")
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    @IBAction func onHardButton(_ sender: UIButton) {
        let viewController = prepareViewController(button : sender, difficulty: "medium")
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*MARK - Private*/
    func prepareViewController(button : UIButton, difficulty : String) -> DomainSelectViewController {
        let viewController = DomainSelectViewController()
        viewController.difficultyLevel = difficulty
        viewController.difficultyImage = button.imageView?.image
        
        return viewController
    }
    

}
