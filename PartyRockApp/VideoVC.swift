//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Matt Tripodi on 5/22/17.
//  Copyright © 2017 Matt Tripodi. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
	
	@IBOutlet weak var webView: UIWebView!
	
	@IBOutlet weak var titleLbl: UILabel!
	
	private var _partyRock: PartyRock!
	
	var partyRock: PartyRock {
		get {
			return _partyRock
		} set {
			_partyRock = newValue
		}
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		
		titleLbl.text = partyRock.videoTitle
		webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
