//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Tony Yeung on 6/10/16.
//  Copyright © 2016 Tony Yeung. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
