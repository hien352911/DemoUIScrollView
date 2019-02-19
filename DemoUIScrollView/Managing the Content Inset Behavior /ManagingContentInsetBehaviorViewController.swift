//
//  Managing the Content Inset Behavior ViewController.swift
//  DemoUIScrollView
//
//  Created by MTQ on 2/18/19.
//  Copyright © 2019 MTQ. All rights reserved.
//

import UIKit

class ManagingContentInsetBehaviorViewController: UIViewController {
	
	@IBOutlet private weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

		scrollView.delegate = self
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		// Tương đương: setContentOffset(CGPoint(0, -50))
		scrollView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
	}

	func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) {
		print(scrollView)
	}
}

extension ManagingContentInsetBehaviorViewController: UIScrollViewDelegate {
	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		print("contentOffset: \(scrollView.contentOffset)")
		print("scrollView.frame: \(scrollView.frame)")
		print("contentSize: \(scrollView.contentSize)")
	}
}
