//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Matt Tripodi on 5/22/17.
//  Copyright © 2017 Matt Tripodi. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

	@IBOutlet weak var videoPreviewImage: UIImageView!
	
	@IBOutlet weak var videoTitle: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
		
    }

	func updateUI(partyRock: PartyRock) {
		videoTitle.text = partyRock.videoTitle

		let url = URL(string: partyRock.imageURL)!
		
		DispatchQueue.global().async {
			do {
				let data = try Data(contentsOf: url)
				DispatchQueue.global().sync {
					self.videoPreviewImage.image = UIImage(data: data)
				}
			} catch {
				// handle the error
			}
		}
		
	}
}
