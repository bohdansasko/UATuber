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
        Video(title: "3 ideas which are changed your life", image: UIImage(named: "video1"), url: "https://youtube.com"),
        Video(title: "Carlsen scoffs at the opening", image: UIImage(named: "video2"), url: "https://youtube.com"),
        Video(title: "Carlsen scoffs at the opening", image: UIImage(named: "video3"), url: "https://youtube.com")
    ]
    
    let pageTitle = "Home"
    let cellId = "cellId"
    
    func numberOfRows(in section: Int) -> Int {
        return videos.count
    }
    
    func getCellViewModel(for row: Int) -> VideoCellViewModel {
        return VideoCellViewModel(video: videos[row])
    }
    
    func configureTableView(for tableView: UITableView) {
        tableView.register(VideoCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
    }
    
    func getRowHeight(viewWidth: CGFloat) -> CGFloat {
        return (viewWidth/320) * 180
    }
    
    func onDidSelectRow(at indexPath: IndexPath) {
        print("selected row \(indexPath)")
    }
}
