//
//  LevelCompleteViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 03/01/2017.
//  Copyright © 2017 Rodina, Calin. All rights reserved.
//

import UIKit

class LevelCompleteViewController: UIViewController {

    @IBAction func onFinishButton(_ sender: Any) {
       let _ = self.navigationController?.popToRootViewController(animated: true)
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
