//
//  GettingScrollingStateViewController.swift
//  DemoUIScrollView
//
//  Created by seesaa on 2/19/19.
//  Copyright © 2019 MTQ. All rights reserved.
//

import UIKit

class GettingScrollingStateViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
    }
}

extension GettingScrollingStateViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("isTracking: \(scrollView.isTracking)")
//        print("isDragging: \(scrollView.isDragging)")
//        print("isDecelerating: \(scrollView.isDecelerating)")
        print(scrollView.decelerationRate)
    }
}
