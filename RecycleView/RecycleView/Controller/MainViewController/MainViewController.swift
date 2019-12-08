//
//  ViewController.swift
//  RecycleView
//  Created by Muhammad Abdullah Al Mamun on 2/12/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imagesFiles = ["1.png", "2.png", "3.png", "4.png", "5.png","1.png", "2.png", "3.png", "4.png", "5.png"]
    var filename = ["Bhutan","Maldip","India", "Bangladesh", "Pakistan","Bhutan","Maldip","India", "Bangladesh", "Pakistan"]
    
    
    @IBOutlet weak var customCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customCollectionView.dataSource = self
        customCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return filename.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell:Customcell = customCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Customcell
        
        //print(indexPath.row)
        cell.customLabel.text = filename[indexPath.row]
        cell.customImageVIew.image = UIImage(named: imagesFiles[indexPath.row])
        
        return cell
    }

}

