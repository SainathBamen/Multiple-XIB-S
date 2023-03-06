//
//  ViewController.swift
//  Multiple XIBs
//
//  Created by sainath bamen on 30/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mycollectionview: UICollectionView!
    
    var tshirtImages:[String] = ["tshirt3", "tshirt4", "tshirt5", "tshirt6", "tshirt7"]
    var tshirtName:[String] = ["a","b","c","d","e"]
    
    
    var tshirtImages2:[String] = ["tshirt3", "tshirt4", "tshirt5", "tshirt6", "tshirt7"]
    var tshirtName2:[String] = ["a","b","c","d","e"]


    override func viewDidLoad() {
        super.viewDidLoad()
        mycollectionview.layer.cornerRadius = 30
        
        let nibcell = UINib(nibName: "MyCollectionViewCell", bundle: nil)
        mycollectionview.register(nibcell, forCellWithReuseIdentifier: "cell")
        
        
        let nibcell2 = UINib(nibName: "YourCollectionViewCell", bundle: nil)
        mycollectionview.register(nibcell2, forCellWithReuseIdentifier: "cell2")
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return tshirtName.count
            
        }else{
            return tshirtName2.count 
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0{
            let cell = mycollectionview.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! YourCollectionViewCell
            cell.image2.image = UIImage(named: tshirtImages[indexPath.row])
            cell.lable2.text = tshirtName[indexPath.row]
            return cell
            
        }else{
            let cell = mycollectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
                cell.tshirtImage.image = UIImage(named: tshirtImages[indexPath.row])
                cell.tsirtLable.text = tshirtName2[indexPath.row]
                return cell
                
            }
    }
    
    
    
    
}

