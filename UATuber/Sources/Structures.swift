//
//  Structures.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

struct VideoChannel {
    let name: String
    let image: UIImage?
}

struct Video {
    let title: String
    let image: UIImage?
    let url: String
    let postedTime: TimeInterval
    let countReviews: Int64
    let channel: VideoChannel
}

