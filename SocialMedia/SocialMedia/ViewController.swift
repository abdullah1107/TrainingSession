//
//  ViewController.swift
//  SocialMedia
//
//  Created by Muhammad Abdullah Al Mamun on 25/11/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func socilamedabuttonAction(_ sender: UIButton) {
        
        if sender.tag == 1{
            let webView = self.storyboard?.instantiateViewController(withIdentifier: "WebtemplateViewController") as! WebtemplateViewController
            
                webView.myStringValue = "gmail"
                webView.titleValue = "Gmail"
            self.navigationController?.pushViewController(webView, animated: true)
        }
        else if sender.tag == 2{
            let webView = self.storyboard?.instantiateViewController(withIdentifier: "WebtemplateViewController") as! WebtemplateViewController
            
            webView.myStringValue = "youtube"
            webView.titleValue = "Youtube"
            self.navigationController?.pushViewController(webView, animated: true)
        }
        
    }



}

