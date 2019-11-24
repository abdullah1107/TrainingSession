//
//  ViewController.swift
//  demo
//
//  Created by Muhammad Abdullah Al Mamun on 24/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
  
    

    var mylist = ["hello1","hello2","hello3","Fahim", "Zahid", "Rafi", "Faisal"]
    var mylist1 = ["hello1","hello2","hello3","Fahim", "Zahid", "Rafi", "Faisal"]
    var dynamicArray = [String]()
    
    
    @IBOutlet weak var customtableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        customtableView.dataSource = self
        customtableView.delegate = self
       
        //load_fromServer()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mylist.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell:CustomTableViewCell = self.customtableView.dequeueReusableCell(withIdentifier: "fahim") as! CustomTableViewCell


        //print("number:", indexPath.row)
       // print(mylist[indexPath.row])
        cell.mycustomlabel.text = mylist[indexPath.row]
        cell.secondCustomLabel.text = mylist1[indexPath.row]


        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print("you are clicked:", indexPath.row)
    }
    
}

