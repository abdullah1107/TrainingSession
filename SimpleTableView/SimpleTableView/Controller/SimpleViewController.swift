//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Muhammad Abdullah Al Mamun on 25/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class SimpleViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTableView.dataSource = self
        customTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTableViewCell = self.customTableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
     cell.nameLabel.text = "Rafi"
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("you are clicked:", indexPath.row)
    }


}

