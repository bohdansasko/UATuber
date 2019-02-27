//
//  RootPage.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/27/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class PageController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPages()
    }
}

extension PageController {
    func setupPages() {
        viewControllers = [
            UINavigationController(rootViewController: HomePage()),
            UINavigationController(rootViewController: TrendingPage())
        ]
        
        setupTabBarItems()
    }
    
    func setupTabBarItems() {
        let tabBarItems: [TabModel] = [
            TabModel(title: "Home", image: UIImage(named: "icHome"), selectedImage: UIImage(named: "icHome")),
            TabModel(title: "Trending", image: UIImage(named: "icTrending"), selectedImage: UIImage(named: "icTrending"))
        ]
        
        let countItems = tabBar.items?.count ?? 0
        for tbIdx in (0..<countItems) {
            guard let homeTabBarItem = tabBar.items?[tbIdx] else {
                return
            }
            homeTabBarItem.title = tabBarItems[tbIdx].title
            homeTabBarItem.image = tabBarItems[tbIdx].image
            homeTabBarItem.selectedImage = tabBarItems[tbIdx].selectedImage
        }
    }
}
