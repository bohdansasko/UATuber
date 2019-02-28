//
//  PageController+UI.swift
//  UATuber
//
//  Created by Bogdan Sasko on 2/28/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

extension PageController {
    func setupPages() {
        
        viewControllers = [
            UINavigationController(rootViewController: HomePage()),
            UINavigationController(rootViewController: TrendingPage())
        ]
        
        for viewController in viewControllers! {
            guard let nvc = viewController as? UINavigationController else {
                return
            }
            nvc.navigationBar.prefersLargeTitles = true
            
            let navController = UISearchController(searchResultsController: nil)
            navController.searchResultsUpdater = (nvc.viewControllers.first as? TablePage)
            nvc.navigationItem.searchController = navController
        }
        
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
