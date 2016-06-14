//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Tony Yeung on 6/13/16.
//  Copyright © 2016 Tony Yeung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var fieldParentView: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    var
        initialY: CGFloat!,
        offSet  : CGFloat!
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = initialY + offSet
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = initialY
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make the blue blinking cursor disappear
        emailTextField.tintColor = UIColor.clearColor()
        emailTextField.becomeFirstResponder()
        
        //save parent view's y position and
        //default offSet to -50 so that it goes up
        initialY = fieldParentView.frame.origin.y
        offSet = -50
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name:UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name:UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancelTabbed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onTapOutside(sender: AnyObject) {
        view.endEditing(true)
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
