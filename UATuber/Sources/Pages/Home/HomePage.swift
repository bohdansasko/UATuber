//
//  ViewController.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/27/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class HomePage: TablePage {
    var videos: [Video] = [
        Video(title: "3 ideas which are changed your life", image: nil, url: "https://youtube.com", postedTime: 0, countReviews: 14000, channel: VideoChannel(name: "Glommy Voice", image: nil)),
        Video(title: "Carlsen scoffs at the opening", image: nil, url: "https://youtube.com", postedTime: 0, countReviews: 3251, channel: VideoChannel(name: "Chess School", image: nil))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return VideoCell()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.text = videos[indexPath.item].title
    }
}
