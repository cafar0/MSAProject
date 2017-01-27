//
//  BonusLevelViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 10/01/2017.
//  Copyright © 2017 Rodina, Calin. All rights reserved.
//

import UIKit

class BonusLevelViewController: UIViewController {

    var level : Int?
    var levelModel = [""]
    var totalStars : Int?
    var starArray : [UIImageView] = []
    
    @IBOutlet weak var letterImageView: UIImageView!
    @IBOutlet weak var leftButtonView: UIButton!
    @IBOutlet weak var rightButtonView: UIButton!
    @IBOutlet weak var bottomButtonView: UIButton!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var leftStar: UIImageView!
    @IBOutlet weak var middleStar: UIImageView!
    @IBOutlet weak var rightStar: UIImageView!
    
    @IBAction func onBackButton(_ sender: Any) {
        let _ = self.navigationController?.popToViewController((self.navigationController?.viewControllers[0])!, animated: true)
    }
    
    @IBAction func onLeftButton(_ sender: Any) {
        checkButton(label: leftLabel)
    }
    
    @IBAction func onRightButton(_ sender: Any) {
        checkButton(label: rightLabel)
    }
    
    @IBAction func onBottomButton(_ sender: Any) {
        checkButton(label: bottomLabel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starArray = [rightStar, middleStar, leftStar]
        levelModel = levelFactory.getBonusLevel()
        
        let random = Int(arc4random())
        
        letterImageView.image = UIImage(named: levelModel[0])
        leftButtonView.setImage  (UIImage(named: levelModel[(random + 1) % 3 + 1]), for: .normal)
        rightButtonView.setImage (UIImage(named: levelModel[(random + 2) % 3 + 1]), for: .normal)
        bottomButtonView.setImage(UIImage(named: levelModel[(random + 3) % 3 + 1]), for: .normal)
        
        leftLabel.text   = levelModel[(random + 1) % 3 + 1]
        rightLabel.text  = levelModel[(random + 2) % 3 + 1]
        bottomLabel.text = levelModel[(random + 3) % 3 + 1]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Private
    private func checkButton(label: UILabel){
        if label.text?.characters.first == levelModel[0].characters.first {
           
            if level! < 5 {
                let viewController = BonusLevelViewController()
                viewController.level = level! + 1
                viewController.totalStars = totalStars! + countStars()
                self.navigationController?.pushViewController(viewController, animated: true)
            }
            else {
                let viewController = LevelCompleteViewController()
                viewController.starsAquired = totalStars! + countStars()
                
                viewController.totalStars = levelModel.count * 3
                self.navigationController?.pushViewController(viewController, animated: true)
            }
        }
        else {
            for star in starArray {
                if star.isHidden == false {
                    star.isHidden = true
                    break
                }
            }
        }
    }

    //MARK: Private
    private func countStars() -> Int {
        var number = 0
        for star in starArray {
            if star.isHidden == false{
                number += 1
            }
        }
        return number
    }

}
