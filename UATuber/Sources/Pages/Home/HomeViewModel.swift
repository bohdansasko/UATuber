//
//  HomeViewModel.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

struct HomeViewModel {
    private let videos: [Video] = [
        Video(title: "3 ideas which are changed your life", image: UIImage(named: "goat_on_green_field"), url: "https://youtube.com", postedTime: 0, countReviews: 14000, channel: VideoChannel(name: "Glommy Voice", image: UIImage(named: "goat_on_green_field"))),
        Video(title: "Carlsen scoffs at the opening", image: UIImage(named: "goat_on_green_field"), url: "https://youtube.com", postedTime: 0, countReviews: 3251, channel: VideoChannel(name: "Chess School", image: UIImage(named: "goat_on_green_field")))
    ]
    
    let pageTitle = "Home"
    let cellId = "cellId"
    let rowHeight: CGFloat = 260
    
    func numberOfRows(in section: Int) -> Int {
        return videos.count
    }
    
    func getCellViewModel(for row: Int) -> VideoCellViewModel {
        return VideoCellViewModel(video: videos[row])
    }
    
    func registerRequiredCells(for tableView: UITableView) {
        tableView.register(VideoCell.self, forCellReuseIdentifier: cellId)
    }
}
