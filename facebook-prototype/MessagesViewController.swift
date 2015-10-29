//
//  MessagesViewController.swift
//  facebook-prototype
//
//  Created by Andy Taylor on 10/22/15.
//  Copyright © 2015 Andy Taylor. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController {
    
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
}
