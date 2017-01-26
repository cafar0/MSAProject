//
//  LevelCompleteViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 03/01/2017.
//  Copyright © 2017 Rodina, Calin. All rights reserved.
//

import UIKit

class LevelCompleteViewController: UIViewController {

    var starsAquired : Int?
    var totalStars   : Int?
    
    @IBOutlet weak var leftStar: UIImageView!
    @IBOutlet weak var middleStar: UIImageView!
    @IBOutlet weak var rightStar: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func onFinishButton(_ sender: Any) {
       let _ = self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text =  String(describing: starsAquired!) + "/" + String(describing: totalStars!)
        
        if starsAquired! >= totalStars!/3 && starsAquired! < totalStars!/2 {
            leftStar.image = UIImage(named: "goldenStar")
            middleStar.image = UIImage(named: "greyStar")
            rightStar.image = UIImage(named: "greyStar")
        }
        if ((starsAquired! >= totalStars!/2) && (starsAquired! < (2 * totalStars!)/3)) {
            leftStar.image = UIImage(named: "goldenStar")
            middleStar.image = UIImage(named: "goldenStar")
            rightStar.image = UIImage(named: "greyStar")
        }
        if (starsAquired! >= (2 * totalStars!)/3) {
            leftStar.image = UIImage(named: "goldenStar")
            middleStar.image = UIImage(named: "goldenStar")
            rightStar.image = UIImage(named: "goldenStar")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
