//
//  VideoCell.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    var viewModel: VideoCellViewModel!
    
    let imgView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleToFill
        view.image = UIImage(named: "video1")
        return view
    }()
    
    let titleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(imgView)
        imgView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imgView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imgView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imgView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        addSubview(titleView)
        titleView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        titleView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        titleView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        titleView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: titleView.topAnchor, constant: 0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: titleView.leftAnchor, constant: 10).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: titleView.rightAnchor, constant: -5).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        imgView.image = viewModel.image
        titleLabel.text = viewModel.title
        selectionStyle = viewModel.selectionStyle
    }
}
