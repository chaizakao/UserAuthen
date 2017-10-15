//
//  ViewController.swift
//  UserAuthen
//
//  Created by chaiwat prachachit on 10/15/2560 BE.
//  Copyright © 2560 ChaiwatPrachachit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userDictionaryString = ["key1":"chaiwat", "key2":"54321"]
    
    
    
    
    
    @IBOutlet weak var showLabel: UILabel!
    
    
    @IBOutlet weak var textUser: UITextField!
    
   
    @IBOutlet weak var textPass: UITextField!
    
   
    
    @IBAction func buttonLogin(_ sender: Any) {
        
       /*
        let usrTextString = userDictionaryString["key1"]
        let pasTextString = userDictionaryString["key2"]
        
        
         if (textUser.text == (usrTextString) || textPass.text == (pasTextString))
            {
        
                showLabel.text = "ล็อกอินสำเร็จ "
                showLabel.textColor = UIColor.blue
            }
        showLabel.text = "User or Pass Wrong "
        showLabel.textColor = UIColor.red
        */
        
    }
    
    
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

