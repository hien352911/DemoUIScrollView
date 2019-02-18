//
//  ViewController.swift
//  DemoUIScrollView
//
//  Created by MTQ on 2/18/19.
//  Copyright © 2019 MTQ. All rights reserved.
//

import UIKit

class ManagingContentSizeAndOffsetViewController: UIViewController {
	
	@IBOutlet private weak var scrollView: UIScrollView!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		scrollView.delegate = self
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("contentSize: \(scrollView.contentSize)")
		print("contentOffset: \(scrollView.contentOffset)")
		print("scrollView.frame.height: \(scrollView.frame.height)")

		// maxOfContentOffset(x , y) = (contentSize.width - scrollView.frame.width, contentSize.height - scrollView.frame.height)
		UIView.animate(withDuration: 1) { [weak self] in
			self?.scrollView.setContentOffset(CGPoint(x: 0, y: 566.0), animated: true)
		}
	}
}

extension ManagingContentSizeAndOffsetViewController: UIScrollViewDelegate {
	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		print("contentOffset: \(scrollView.contentOffset)")
	}
}
