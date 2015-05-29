//
//  ComposeViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/26/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var buttonArray: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonArray = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
        resetButtons()
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        resetButtons()
        UIView.animateWithDuration(0.4, delay: 0, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.photoButton.frame.origin.y = 139
            self.photoButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.05, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.quoteButton.frame.origin.y = 139
            self.quoteButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.1, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.textButton.frame.origin.y = 139
            self.textButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.15, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.chatButton.frame.origin.y = 281
            self.chatButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.2, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.linkButton.frame.origin.y = 281
            self.linkButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.25, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.videoButton.frame.origin.y = 281
            self.videoButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        println("view did appear")

    }
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func resetButtons(){
        for var i = 0; i < buttonArray.count; i++ {
            buttonArray[i].alpha = 0
            buttonArray[i].frame.origin.y = 470
        }
    }
    
    func animateButtonsOut(){
        UIView.animateWithDuration(0.4, delay: 0, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.photoButton.frame.origin.y = -96
            self.photoButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.05, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.quoteButton.frame.origin.y = -96
            self.quoteButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.1, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.textButton.frame.origin.y = -96
            self.textButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.15, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.chatButton.frame.origin.y = -96
            self.chatButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.2, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.linkButton.frame.origin.y = -96
            self.linkButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.4, delay: 0.25, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.videoButton.frame.origin.y = -96
            self.videoButton.alpha = 1
            }) { (Bool) -> Void in
                
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        
    }
    
    
    @IBAction func nvmButtonPressed(sender: AnyObject) {
       // composeViewController.view.removeFromSuperview()
    }

}
