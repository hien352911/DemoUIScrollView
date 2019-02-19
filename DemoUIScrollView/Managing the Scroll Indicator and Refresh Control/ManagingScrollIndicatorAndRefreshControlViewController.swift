//
//  ManagingScrollIndicatorAndRefreshControlViewController.swift
//  DemoUIScrollView
//
//  Created by seesaa on 2/19/19.
//  Copyright © 2019 MTQ. All rights reserved.
//

import UIKit

class ManagingScrollIndicatorAndRefreshControlViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
    }
}

extension ManagingScrollIndicatorAndRefreshControlViewController: UIScrollViewDelegate {
    
}
