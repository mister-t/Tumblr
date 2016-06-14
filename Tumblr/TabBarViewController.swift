//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Tony Yeung on 6/10/16.
//  Copyright © 2016 Tony Yeung. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView! //the view where everything is shown
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var bubbleImageView: UIImageView!
    
    var viewControllers: [UIViewController]!

    var selectedIndex: Int = 0 //selected button on the tab bar

    var homeViewController: UIViewController! //view controller for the 'home' button
    var searchViewController: UIViewController! //view controller for the 'search' button
    var composeViewController: UIViewController! //view controller for the 'compose' button
    var acctViewController: UIViewController! //view controller for the 'account' button
    var trendingViewController: UIViewController! //view controller for the 'trending' button
    var previousSelected: Int = 0
    var searchViewIdx: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animateWithDuration(0.8, delay: 0.0,
            // Autoreverse runs the animation backwards and Repeat cycles the animation indefinitely.
            options: [UIViewAnimationOptions.Autoreverse,
                UIViewAnimationOptions.Repeat], animations: { () -> Void in
                    self.bubbleImageView.transform = CGAffineTransformMakeTranslation(0, 10)
            }, completion: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //home view
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        //search view
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        //compose view not instantiated as it's being called as a modal
        
        //acct view
        acctViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        //trending view
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, acctViewController, trendingViewController]
        
        //Set the initial view
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
    }
    
    @IBAction func didPressTab(sender: UIButton) {
        
        //save previous selected index
        let previousIndex = selectedIndex
        previousSelected = previousIndex
        
        selectedIndex = sender.tag
        print("button tabbed: \(selectedIndex)")
        buttons[previousIndex].selected = false
        
        //hide or show the buble
        hideShowBubble(selectedIndex, targetIdx: searchViewIdx)
        
        //erase previous view
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //set selected index and set current view
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        //set the size of the view to that of the content view
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        //Call the viewDidAppear method of the ViewController you are adding using but calling didMoveToParentViewController
        vc.didMoveToParentViewController(self)
        
    }
    
    func hideShowBubble (currIndx: Int, targetIdx: Int) {
        if currIndx == targetIdx {
            bubbleImageView.alpha = 0
        } else {
            bubbleImageView.alpha = 1
        }
        
        
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
