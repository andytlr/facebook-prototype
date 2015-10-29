//
//  NewsFeedViewController.swift
//  facebook-prototype
//
//  Created by Andy Taylor on 10/22/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {
    
    var refreshControl: UIRefreshControl!

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
        
        refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: "onRefresh", forControlEvents: UIControlEvents.ValueChanged)
        
        scrollView.contentSize = imageView.frame.size
        scrollView.insertSubview(refreshControl, atIndex: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onRefresh() {
        delay(2.0) {
            self.refreshControl.endRefreshing()
        }
    }
}
