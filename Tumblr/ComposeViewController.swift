//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Tony Yeung on 6/10/16.
//  Copyright © 2016 Tony Yeung. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var chatIconImageView: UIImageView!
    @IBOutlet weak var linkIconImageView: UIImageView!
    @IBOutlet weak var photoIconImageView: UIImageView!
    @IBOutlet weak var quoteIconImageView: UIImageView!
    @IBOutlet weak var textIconImageView: UIImageView!
    @IBOutlet weak var videoIconImageView: UIImageView!
    
    var chatOriginalY: CGFloat!,
        linkOriginalY: CGFloat!,
        photoOriginalY: CGFloat!,
        quoteOriginalY: CGFloat!,
        textOriginalY: CGFloat!,
        videoOriginalY: CGFloat!,
        moveOutY: CGFloat = -600,
        moveInY: CGFloat = 600
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //Save 'y' position before changing it
        chatOriginalY  = chatIconImageView.frame.origin.y;
        linkOriginalY  = linkIconImageView.frame.origin.y;
        photoOriginalY = photoIconImageView.frame.origin.y;
        quoteOriginalY = quoteIconImageView.frame.origin.y;
        textOriginalY  = textIconImageView.frame.origin.y;
        videoOriginalY = videoIconImageView.frame.origin.y;
        
        chatIconImageView.frame.origin = CGPoint(x: chatIconImageView.frame.origin.x, y: moveInY);
        linkIconImageView.frame.origin = CGPoint(x: linkIconImageView.frame.origin.x, y: moveInY);
        photoIconImageView.frame.origin = CGPoint(x: photoIconImageView.frame.origin.x, y: moveInY);
        quoteIconImageView.frame.origin = CGPoint(x: quoteIconImageView.frame.origin.x, y: moveInY);
        videoIconImageView.frame.origin = CGPoint(x: videoIconImageView.frame.origin.x, y: moveInY);
        textIconImageView.frame.origin = CGPoint(x: textIconImageView.frame.origin.x, y: moveInY);
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animateWithDuration(0.65) { () -> Void in
            self.chatIconImageView.frame.origin.y = self.chatOriginalY
        }
        
        UIView.animateWithDuration(0.6) { () -> Void in
            self.linkIconImageView.frame.origin.y = self.linkOriginalY
        }
        
        UIView.animateWithDuration(0.55) { () -> Void in
            self.photoIconImageView.frame.origin.y = self.photoOriginalY
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.quoteIconImageView.frame.origin.y = self.quoteOriginalY
        }
        
        UIView.animateWithDuration(0.45) { () -> Void in
            self.textIconImageView.frame.origin.y = self.textOriginalY
        }
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.videoIconImageView.frame.origin.y = self.videoOriginalY
        }
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
        
        UIView.animateWithDuration(0.65) { () -> Void in
            self.chatIconImageView.frame.origin.y = self.chatOriginalY + self.moveOutY
        }
        
        UIView.animateWithDuration(0.6) { () -> Void in
            self.linkIconImageView.frame.origin.y = self.linkOriginalY + self.moveOutY
        }
        
        UIView.animateWithDuration(0.55) { () -> Void in
            self.photoIconImageView.frame.origin.y = self.photoOriginalY + self.moveOutY
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.quoteIconImageView.frame.origin.y = self.quoteOriginalY + self.moveOutY
        }
        
        UIView.animateWithDuration(0.45) { () -> Void in
            self.textIconImageView.frame.origin.y = self.textOriginalY + self.moveOutY
        }
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.videoIconImageView.frame.origin.y = self.videoOriginalY + self.moveOutY
        }

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
