//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Muhammad Abdullah Al Mamun on 25/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class SimpleViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //dynamic array for json data
    var idNumber = [String]()
    var firstName = [String]()
    var lastName = [String]()
    var email = [String]()
    //##############################
    
    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTableView.dataSource = self
        customTableView.delegate = self
        getdatafromServer()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return idNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTableViewCell = self.customTableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        cell.id_number.text = idNumber[indexPath.row]
        cell.first_name.text = firstName[indexPath.row]
        cell.last_name.text = lastName[indexPath.row]
        cell.email_name.text = email[indexPath.row]
        
        return cell
        
        
       
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("you are clicked:", indexPath.row)
    }
    
    
    //this is the second task
    func getdatafromServer(){
        
        let jsonUrlString = "https://api.myjson.com/bins/65v51"
        guard let url = URL(string: jsonUrlString) else { return }
        
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            print(response)
            do{
                let jsondata = try JSONDecoder().decode(Base.self, from:data!)
                
                
                print(jsondata)
                
                DispatchQueue.main.async() {
                    
                    for initval in 0..<jsondata.data!.count
                    {
                        
                        self.idNumber.append(String(describing:jsondata.data![initval].id!))
                        self.email.append(String(describing:jsondata.data![initval].email!))
                        print(String(describing:jsondata.data![initval].email!))
                        self.firstName.append(String(describing:jsondata.data![initval].first_name!))
                        self.lastName.append(String(describing:jsondata.data![initval].last_name!))
                    }
                    
                    print(self.idNumber.count)
                    if self.idNumber.count > 0{
                        self.customTableView.reloadData()
                       
                    }
                    
                    
                }
                
                
            }catch let jsonErr{
                print(jsonErr)
                
            }
            
            }.resume()
        
        
    }


}

