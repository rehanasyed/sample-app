//
//  ViewController.swift
//  sample app
//
//  Created by Techsviewer on 9/6/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var ref:DatabaseReference!
    
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
       ref=Database.database().reference()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

