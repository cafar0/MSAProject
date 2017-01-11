//
//  LevelViewController.swift
//  SpellingBee
//
//  Created by Rodina, Calin on 28/12/2016.
//  Copyright © 2016 Rodina, Calin. All rights reserved.
//

import UIKit

class MediumLevelViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var levelArray : [Level]?
    var levelIndex : Int?
    var levelModel : Level?
    let cellId = "LetterCollectionViewCellID"
    
    @IBOutlet weak var levelImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var wordToImageConstraint: NSLayoutConstraint!
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBAction func onNextButton(_ sender: Any) {
        
        if levelIndex! < (levelArray?.count)!-1 {
            let viewController = MediumLevelViewController()
            viewController.levelArray = levelArray
            viewController.levelIndex = self.levelIndex! + 1
            self.navigationController?.pushViewController(viewController, animated: true)
            
        }
        else {
            let VC = LevelCompleteViewController()
            self.navigationController?.pushViewController(VC, animated: true)
        }

    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        levelModel = levelArray?[levelIndex!]
        levelImageView.image = levelModel?.imageView
        nextButton.isHidden  = true
        collectionView.register(UINib(nibName: "LetterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        collectionView2.register(UINib(nibName: "LetterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        
        for index in 0 ... (levelModel?.incompleteWord.count)!-1 {
            levelModel?.incompleteWord[index] = "_"
        }
    }
    
    
    override func viewDidLayoutSubviews() {
    }
    
    /*MARK - CollectionViewDelegate*/
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView === self.collectionView {
            return (levelModel!.completeWord.count)
        }
        else if collectionView === self.collectionView2 {
            return levelModel!.options.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView === self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LetterCollectionViewCell
            cell.letter = levelModel?.incompleteWord[indexPath.row]
            cell.letterImageView.image = UIImage(named: (levelModel?.incompleteWord[indexPath.row])!)
            return cell
        }
            
        else if collectionView === self.collectionView2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LetterCollectionViewCell
            cell.letter = levelModel?.options[indexPath.row]
            cell.letterImageView.image = UIImage(named: (levelModel?.options[indexPath.row])!)
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView === self.collectionView2 {
            let cell = collectionView2.cellForItem(at: indexPath) as! LetterCollectionViewCell
            
            if (levelModel?.completeWord.contains(cell.letter!))!{
                
                let index = levelModel?.completeWord.index(of: cell.letter!)
                levelModel?.incompleteWord[index!] = (levelModel?.completeWord[index!])!
                self.collectionView.reloadData()
                
                if (levelModel?.isLevelComplete())! {
                    
                    nextButton.isHidden = false
                    collectionView2.isHidden = true
                }
            }
        }
    }
    
}
