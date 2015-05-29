//
//  HomeViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/26/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var formView: UIView!
    @IBOutlet weak var emailField: UITextField!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonPressed(sender: AnyObject) {
        formView.hidden = false
        emailField.becomeFirstResponder()
    }
    
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        view.endEditing(true)
        formView.hidden = true
    }
    
}
