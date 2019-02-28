//
//  VideoCell.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    var viewModel: VideoCellViewModel?
    
    let imgView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let channelAvatar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        return view
    }()
    
    let titleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()

    let subtitleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(imgView)
        imgView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imgView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imgView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        addSubview(channelAvatar)
        channelAvatar.widthAnchor.constraint(equalToConstant: 26).isActive = true
        channelAvatar.heightAnchor.constraint(equalTo: channelAvatar.widthAnchor).isActive = true
        channelAvatar.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 4).isActive = true
        channelAvatar.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        
        addSubview(titleView)
        titleView.topAnchor.constraint(equalTo: channelAvatar.topAnchor).isActive = true
        titleView.leftAnchor.constraint(equalTo: channelAvatar.rightAnchor, constant: 4).isActive = true
        titleView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        titleView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(subtitleView)
        subtitleView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 2).isActive = true
        subtitleView.leftAnchor.constraint(equalTo: titleView.leftAnchor).isActive = true
        subtitleView.rightAnchor.constraint(equalTo: titleView.rightAnchor).isActive = true
        subtitleView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        // TODO: setup content
    }
}
