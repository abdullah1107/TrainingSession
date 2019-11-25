//
//  WebViewController.swift
//  NationalParlament
//
//  Created by Muhammad Abdullah Al Mamun on 5/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit
import WebKit

class WebtemplateViewController: UIViewController {

    @IBOutlet weak var templateWeb: WKWebView!
    var myStringValue:String?
    var titleValue:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleValue
        load_forWebViewfromServer()
        

        // Do any additional setup after loading the view.
    }
    func load_forWebViewfromServer(){
        
        if myStringValue == "gmail"{
            let url = URL(string: "https://mail.google.com/")
            let request = URLRequest(url: url!)
            //self.setTitle = "Facebook"
            templateWeb.load(request)
        }
       
        else if myStringValue == "youtube"{
            let url = URL(string: "https://www.youtube.com/")
            let request = URLRequest(url: url!)
            templateWeb.load(request)
        }
//        else if myStringValue == "linkedin"{
//            let url = URL(string: "https://www.linkedin.com/")
//            let request = URLRequest(url: url!)
//            templateWeb.load(request)
//        }
//
//        else if myStringValue == "calendar"{
//            let url = URL(string: "https://calendar.google.com/calendar/r")
//            let request = URLRequest(url: url!)
//            templateWeb.load(request)
//        }
//        else if myStringValue == "gmail"{
//            let url = URL(string: "https://mail.google.com/")
//            let request = URLRequest(url: url!)
//            templateWeb.load(request)
//        }
//        else if myStringValue == "yahoo"{
//            let url = URL(string: "https://mail.yahoo.com/")
//            let request = URLRequest(url: url!)
//            templateWeb.load(request)
//        }
//        else if myStringValue == "hotmail"{
//            let url = URL(string: "https://outlook.live.com/owa/")
//            let request = URLRequest(url: url!)
//            templateWeb.load(request)
//        }
        
    }
    

}
