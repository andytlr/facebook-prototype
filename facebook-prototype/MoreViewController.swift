//
//  MoreViewController.swift
//  facebook-prototype
//
//  Created by Andy Taylor on 10/22/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapLogout(sender: AnyObject) {
        let alertController = UIAlertController(title: "Are you sure you want to logout?", message: nil, preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in }
        alertController.addAction(cancelAction)

        let logoutAction = UIAlertAction(title: "Logout", style: .Destructive) { (action) in
            self.performSegueWithIdentifier("logout", sender: nil)
        }
        alertController.addAction(logoutAction)
        
        presentViewController(alertController, animated: true) { }

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
