//
//  LoginViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/30/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelButtonPressed(sender: AnyObject) {
        view.endEditing(true)
        dismissViewControllerAnimated(true, completion: nil)
    }

}
