//
//  TabBarViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/26/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController, UIViewControllerTransitioningDelegate {
    var homeViewController: HomeViewController!
    var searchViewController: SearchViewController!
    //var composeViewController: ComposeViewController!
    var accountViewController: AccountViewController!
    var trendingViewController: TrendingViewController!
    
    var viewControllerArray: [UIViewController]!
    
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    var buttonArray: [UIButton]!
    
    var currentViewController: UIViewController!
    

    
    @IBOutlet weak var exploreBubble: UIImageView!
    
    
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var storyboard = UIStoryboard(name: "Main", bundle:nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as HomeViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as SearchViewController
       // composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as ComposeViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as AccountViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as TrendingViewController
        
        //setting sizes
        homeViewController.view.frame = contentView.bounds
        searchViewController.view.frame = contentView.bounds
        //composeViewController.view.frame = self.view.bounds
        accountViewController.view.frame = contentView.bounds
        trendingViewController.view.frame = contentView.bounds
        
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        currentViewController = homeViewController
        showBubble()
        
        viewControllerArray = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttonArray = [homeButton, searchButton, accountButton, trendingButton]
        
        showBubble()

    }
    
    
   

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    func showBubble(){
        UIView.animateWithDuration(0.8, delay: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse, animations: { () -> Void in
            self.exploreBubble.frame.origin.y = 455
            }) { (Bool) -> Void in
                
        }
    }
    
    
    
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        var currentIndex = -1
        var button = sender as UIButton
        
        for var i = 0; i < buttonArray.count; i++ {
            buttonArray[i].selected = false //reset all buttons back to unselected
            if button == buttonArray[i]{
                currentIndex = i
                button.selected = !button.selected
            }
        }
        
        if currentViewController != nil && viewControllerArray[currentIndex] != currentViewController{
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.didMoveToParentViewController(nil)
            
            
        }
        
        
        
        addChildViewController(viewControllerArray[currentIndex])
        contentView.addSubview(viewControllerArray[currentIndex].view)
        currentViewController = viewControllerArray[currentIndex]
        
        
        
        if currentViewController == searchViewController{
            exploreBubble.hidden = true

        }
        else{
            exploreBubble.hidden = false
        }
        
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as ComposeViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        //destinationVC.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        destinationVC.transitioningDelegate = self
        
    }
   
    @IBAction func composeButtonPressed(sender: AnyObject) {
        performSegueWithIdentifier("composeViewSegue", sender: self)
    }
   

    
    
    
    func resetViewController(){
        
        homeViewController.removeFromParentViewController()
        searchViewController.removeFromParentViewController()
        accountViewController.removeFromParentViewController()
        trendingViewController.removeFromParentViewController()
    }
    
    
    
 
    
    

}
