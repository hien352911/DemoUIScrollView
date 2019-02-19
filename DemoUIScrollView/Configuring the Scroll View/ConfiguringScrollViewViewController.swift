//
//  ConfiguringScrollViewViewController.swift
//  DemoUIScrollView
//
//  Created by seesaa on 2/19/19.
//  Copyright © 2019 MTQ. All rights reserved.
//

import UIKit

class ConfiguringScrollViewViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self

//        scrollView.isScrollEnabled = false
//        scrollView.isDirectionalLockEnabled = true
//        scrollView.scrollsToTop = false
//        scrollView.bounces = false
//        scrollView.alwaysBounceVertical = true
//        scrollView.alwaysBounceHorizontal = true
    }
}

extension ConfiguringScrollViewViewController: UIScrollViewDelegate {
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        return false
    }
    
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print(scrollView)
    }
}
