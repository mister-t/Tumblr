//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Tony Yeung on 6/13/16.
//  Copyright © 2016 Tony Yeung. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var loadingImageView: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!

    var animatedImage: UIImage!
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    override func viewWillAppear(animated: Bool) {
        searchFeed.alpha = 0
        loadingImageView.alpha = 1
        parentView.alpha = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")

        images = [loading_1, loading_2, loading_3]

        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)

        loadingImageView.image = animatedImage
        
        delay(2) {
            self.searchFeed.alpha = 1
            self.loadingImageView.alpha = 0
            self.parentView.alpha = 0
        }
        // Do any additional setup after loading the view.
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
