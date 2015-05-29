//
//  SearchViewController.swift
//  tumblr demo
//
//  Created by Hsin Yi Huang on 5/26/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    
    @IBOutlet weak var loadingView: UIView!
    
    @IBOutlet weak var loadIcon1: UIImageView!
    @IBOutlet weak var loadIcon2: UIImageView!
    @IBOutlet weak var loadIcon3: UIImageView!
    
    var loadIconArray: [UIImageView]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadIconArray = [loadIcon1, loadIcon2, loadIcon3]
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        showLoad()
        
    }
    
    
    func showLoad(){
        loadingView.alpha = 1
        loadIcon1.hidden = false
        loadIcon2.hidden = true
        loadIcon3.hidden = true
        var loop = 2
        var INCREMENT = 0.4
        
        /*
        for var i = 0; i < self.loadIconArray.count * loop; i++ {
            println(INCREMENT * Double(i+1))
            delay(INCREMENT * Double(i+1), { () -> () in
                self.loadIconArray[i%3].hidden = true
                self.loadIconArray[(i+1)%3].hidden = false
            })
        }
        
        */

        delay(0.4, { () -> () in
            self.loadIcon1.hidden = true
            self.loadIcon2.hidden = false
        })
        
        delay(0.8, { () -> () in
            self.loadIcon2.hidden = true
            self.loadIcon3.hidden = false
        })
        
        delay(1.2, { () -> () in
            self.loadIcon3.hidden = true
            self.loadIcon1.hidden = false
        })
        
        delay(1.6, { () -> () in
            self.loadIcon1.hidden = true
            self.loadIcon2.hidden = false
        })
        
        delay(2, { () -> () in
            self.loadIcon2.hidden = true
            self.loadIcon3.hidden = false
        })
        




//        for var i = 0; i < loadIconArray.count*loop; i++ {
//            var second = Double(Double(i)*0.4)
//            println(second)
//            
//            for var j = 0; j < self.loadIconArray.count; j++ {
//                self.loadIconArray[j].hidden = true
//            }
//            
//            
//            
//            
//            delay(second, { () -> () in
//                self.loadIconArray[i%self.loadIconArray.count].hidden = false
//            })
//            
//            
//            
//            
//            
//        }
        
        delay(2.4, { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.loadingView.alpha = 0
            })
        })

    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
