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
    var viewControllers: [UIViewController]!

    var selectedIndex: Int = 0 //selected button on the tab bar

    var homeViewController: UIViewController! //view controller for the 'home' button
    var searchViewController: UIViewController! //view controller for the 'search' button
    var composeViewController: UIViewController! //view controller for the 'compose' button
    var acctViewController: UIViewController! //view controller for the 'account' button
    var trendingViewController: UIViewController! //view controller for the 'trending' button
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //home view
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
            addChildViewController(homeViewController)
            contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        
        //search view
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
            addChildViewController(searchViewController)
            contentView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)
        
        //compose view
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
            addChildViewController(composeViewController)
            contentView.addSubview(composeViewController.view)
        composeViewController.didMoveToParentViewController(self)
        
        //acct view
        acctViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
            addChildViewController(acctViewController)
            contentView.addSubview(acctViewController.view)
        acctViewController.didMoveToParentViewController(self)
        
        //trending view
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
            addChildViewController(trendingViewController)
            contentView.addSubview(trendingViewController.view)
        trendingViewController.didMoveToParentViewController(self)
        
        viewControllers = [homeViewController, searchViewController, composeViewController, acctViewController, trendingViewController]

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
