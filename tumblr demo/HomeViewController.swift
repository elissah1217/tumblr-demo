//
//  HomeViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/26/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIViewControllerTransitioningDelegate {

    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonPressed(sender: AnyObject) {
        performSegueWithIdentifier("formSegue", sender: self)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as LoginViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
        
    }
    
    
    
    
}
