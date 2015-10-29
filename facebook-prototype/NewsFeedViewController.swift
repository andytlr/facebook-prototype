//
//  NewsFeedViewController.swift
//  facebook-prototype
//
//  Created by Andy Taylor on 10/22/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.alpha = 0
        spinner.startAnimating()
        scrollView.userInteractionEnabled = false
        
        delay(2.0) {
            self.spinner.stopAnimating()
            self.imageView.alpha = 1
            self.scrollView.userInteractionEnabled = true
        }
        
        scrollView.contentSize = imageView.frame.size
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
