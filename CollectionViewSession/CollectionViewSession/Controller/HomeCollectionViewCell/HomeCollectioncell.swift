//
//  HomeCollectioncell.swift
//  CollectionViewSession
//
//  Created by Muhammad Abdullah Al Mamun on 26/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class HomeCollectioncell: UICollectionViewCell {
    
    @IBOutlet weak var social_Image: UIImageView!
    
    @IBOutlet weak var socialName: UILabel!
    
    public func configure(with model: HomeModel) {
        social_Image.image = model.image
        socialName.text = model.name
    }
    
}
