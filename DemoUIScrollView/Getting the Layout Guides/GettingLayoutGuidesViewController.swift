//
//  GettingLayoutGuidesViewController.swift
//  DemoUIScrollView
//
//  Created by MTQ on 2/19/19.
//  Copyright © 2019 MTQ. All rights reserved.
//

import UIKit

class GettingLayoutGuidesViewController: UIViewController {
	
	@IBOutlet private weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()


    }

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		if #available(iOS 11.0, *) {
			print("frameLayoutGuide: \(scrollView.frameLayoutGuide)")
			print("contentLayoutGuide: \(scrollView.contentLayoutGuide)")
		} else {
			// Fallback on earlier versions
		}
		
	}
}
