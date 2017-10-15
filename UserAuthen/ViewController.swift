//
//  ViewController.swift
//  UserAuthen
//
//  Created by chaiwat prachachit on 10/15/2560 BE.
//  Copyright © 2560 ChaiwatPrachachit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Explicit Constant
    let userDictionaryString = ["user1":"123456", "user2":"123456", "user3":"123456"]
    let alertDictionary = ["userFail":"ไม่มี user นี้ในฐานข้อมูล", "passwordFail":"please Try Again Pass Fail", "authenOK":"welcome to my APP"]
    
    
    
    // ตัวแปรรับค่าจากการกรอก user pass ผ่าน textField
    var userString: String = ""
    var passwordString:String = ""
    
    
    
    
    
    @IBOutlet weak var showLabel: UILabel!
    
    
    @IBOutlet weak var textUser: UITextField!
    
   
    @IBOutlet weak var textPass: UITextField!
    
   
    
    @IBAction func buttonLogin(_ sender: Any) {
        
        //Get value from textfield
        
        userString = textUser.text!
        passwordString = textPass.text!
        
        // แสดงค่าที่รับมาจาก textfield บน console
        print("user ==> \(userString)")
        print("pass ==> \(passwordString)")
        
        let resultString = userDictionaryString[userString]
        print("result string ==> \(String(describing: resultString))")
        

        
       //check user pass
        if(resultString == nil)
          {
            showLabel.text = alertDictionary["userFail"]
                showLabel.textColor = UIColor.red
        } else {
            if(passwordString == resultString){
                // user pass OK
                showLabel.text = alertDictionary["authenOK"]
                showLabel.textColor = UIColor.blue
            } else {
                // pass Fail
                showLabel.text = alertDictionary["passwordFail"]
                showLabel.textColor = UIColor.red
            }
        }
      
    }// Log in Button
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showLabel.text = " กรอก USER และ PASS "
        showLabel.textColor = UIColor.black
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

