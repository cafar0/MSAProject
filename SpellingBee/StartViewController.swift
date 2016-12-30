//
//  StartViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 24/11/16.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBAction func onEasyButton(_ sender: Any) {
        let viewController = DomainSelectViewController()
        viewController.difficultyLevel = "easy"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func onMediumButton(_ sender: Any) {
        let viewController = DomainSelectViewController()
        viewController.difficultyLevel = "medium"
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    @IBAction func onHardButton(_ sender: Any) {
        let viewController = DomainSelectViewController()
        viewController.difficultyLevel = "hard"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
