//
//  ComposeViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/26/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {

    var isPresenting: Bool = true
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var buttonArray: [UIButton]!
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
        println("init")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonArray = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
        resetButtons()
        transitioningDelegate = self
            }
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        resetButtons()
        animateButtonsIn()
        println("view did appear")

    }
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    
    @IBAction func nevermindButtonPressed(sender: AnyObject) {
        
        delay(0.6, { () -> () in
           self.dismissViewControllerAnimated(true, completion: nil)
        })
   
        
    }
    
    
    
    /////////Modal Transition///////////////
    
   
    
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        
        isPresenting = true
        return self
    }
    
    
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        println("animating transition")
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        if (isPresenting) {
            containerView.addSubview(toViewController.view)
            toViewController.view.alpha = 0
            
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                toViewController.view.alpha = 1
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
            }
        } else {
            animateButtonsOut()
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()
            }
        }
    }

    
    
    ///////////////Animate button////////////
    
    
    func resetButtons(){
        
        for var i = 0; i < buttonArray.count; i++ {
            
            buttonArray[i].alpha = 0
            
            buttonArray[i].frame.origin.y = 470
            
        }
        
    }
    
    
    
    func animateButtonsIn(){

        
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
        
        
        
    }
    
    
    
    func animateButtonsOut(){
        
        UIView.animateWithDuration(0.4, delay: 0, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            self.photoButton.frame.origin.y = -96
            
            self.photoButton.alpha = 0
            }) { (Bool) -> Void in
                
                
                
        }
        
        
        
        UIView.animateWithDuration(0.4, delay: 0.05, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            self.quoteButton.frame.origin.y = -96
            
            self.quoteButton.alpha = 0
            
            }) { (Bool) -> Void in
                
                
                
        }
        
        
        
        UIView.animateWithDuration(0.4, delay: 0.1, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            self.textButton.frame.origin.y = -96
            
            self.textButton.alpha = 0
            
            }) { (Bool) -> Void in
                
                
                
        }
        
        
        
        UIView.animateWithDuration(0.4, delay: 0.15, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            self.chatButton.frame.origin.y = -96
            
            self.chatButton.alpha = 0
            
            }) { (Bool) -> Void in
                
                
                
        }
        
        
        
        UIView.animateWithDuration(0.4, delay: 0.2, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            self.linkButton.frame.origin.y = -96
            
            self.linkButton.alpha = 0
            
            }) { (Bool) -> Void in
                
                
                
        }
        
        
        
        UIView.animateWithDuration(0.4, delay: 0.25, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            self.videoButton.frame.origin.y = -96
            
            self.videoButton.alpha = 0
            
            }) { (Bool) -> Void in
                
                
                
        }
        
    }
    
    
    

    


}
