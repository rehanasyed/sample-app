//
//  SignUpForm.swift
//  sample app
//
//  Created by Techsviewer on 9/8/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit
import Firebase
import CountryPickerView

class SignUpForm: UIViewController {

    var ref:DatabaseReference!
    
    @IBOutlet weak var UserName_TF: UITextField!
    
    @IBOutlet weak var Phone_TF: UITextField!
    
    @IBOutlet weak var Password_TF: UITextField!
    
    @IBOutlet weak var Re_EnterPassword_TF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let cpv = CountryPickerView(frame: CGRect(x: 0, y: 0, width: 120, height: 20))
        Phone_TF.leftView=cpv
        Phone_TF.leftViewMode = .always
        
       
        
        ref=Database.database().reference()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func create_account(_ sender: Any) {
        ref.childByAutoId().setValue(["User Name ":UserName_TF.text, "Phone no": Phone_TF.text, "Password": Password_TF.text, "Re-enter password":Re_EnterPassword_TF.text])
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
