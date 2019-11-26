//  HomeViewController.swift
//  CollectionViewSession
//  Created by Muhammad Abdullah Al Mamun on 26/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    let home_model: [HomeModel] =
        [HomeModel(image: #imageLiteral(resourceName: "facebook"), name: "ফেইসবুক"),
         HomeModel(image: #imageLiteral(resourceName: "twitter"), name: "টুইটার"),
         HomeModel(image: #imageLiteral(resourceName: "youtube"), name: "ইউটিউব"),
         HomeModel(image: #imageLiteral(resourceName: "linkedin"), name: "লিংকইন")]
    
    @IBOutlet weak var socialMediaCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socialMediaCollectionView.delegate=self
        socialMediaCollectionView.dataSource=self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        print("Inside Will Appea")
        
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return home_model.count
        
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell:HomeCollectioncell = socialMediaCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! HomeCollectioncell
        
        //configure the function which is define in HomeCollectioncell
        cell.configure(with: home_model[indexPath.row])
        
        
        
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tothepoint(_:)))
        cell.social_Image.isUserInteractionEnabled = true
        //cell.yourImg.isUserInteractionEnabled = true
        //print("index path:",indexPath.row )
        cell.social_Image.tag = indexPath.row
        cell.social_Image.addGestureRecognizer(tapGestureRecognizer)
        
        
        
        
        return cell
        
    }
    @objc func tothepoint(_ sender:AnyObject){
        
        // print("hello this is my method!!!!")
        
        if (sender.view.tag == 0){
            let webView = self.storyboard?.instantiateViewController(withIdentifier: "WebtemplateViewController") as! WebtemplateViewController
            //navigationController!.title = "Nofitication"
            webView.myStringValue = "facebook"
            webView.titleValue = "ফেইসবুক"
            self.navigationController?.pushViewController(webView, animated: true)
        }
        if (sender.view.tag == 1){
            let webView = self.storyboard?.instantiateViewController(withIdentifier: "WebtemplateViewController") as! WebtemplateViewController
            //navigationController!.title = "Nofitication"
            webView.myStringValue = "twitter"
            webView.titleValue = "টুইটার"
            self.navigationController?.pushViewController(webView, animated: true)
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let noOfCellsInRow = 2
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
        
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
        
        return CGSize(width: size, height: size)
    }
    
    
    
    
    
    
}
    




