//
//  CustomTableViewCell.swift
//  demo
//
//  Created by Muhammad Abdullah Al Mamun on 24/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var mycustomlabel: UILabel!
    
    @IBOutlet weak var secondCustomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
