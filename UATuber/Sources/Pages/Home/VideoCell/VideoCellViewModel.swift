//
//  VideoCellViewModel.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

struct VideoCellViewModel {
    let image: UIImage?
    let title: String
    let selectionStyle: UITableViewCell.SelectionStyle = .none
    
    init(video: Video) {
        image = video.image
        title = video.title
    }
}
