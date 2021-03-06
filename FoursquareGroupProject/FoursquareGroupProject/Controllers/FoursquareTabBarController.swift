//
//  FoursquareTabBarController.swift
//  FoursquareGroupProject
//
//  Created by Melinda Diaz on 2/21/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit
import DataPersistence

class FoursquareTabBarController: UITabBarController {
    
    private let collectionPersistence = DataPersistence<Collection>(filename: "Collection.plist")
    
    
    lazy var searchViewController: SearchViewController = {
        let vc = SearchViewController(dataPersistence: collectionPersistence)
        vc.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass.circle"), selectedImage: UIImage(systemName: "magnifyingglass.circle.fill"))
        return vc
    }()
    lazy var collectionsViewController: SaveCollectionsVC = {
        let vc = SaveCollectionsVC(collectionPersistence)
        vc.tabBarItem = UITabBarItem(title: "Collections", image: UIImage(systemName: "star"), selectedImage: UIImage(systemName: "star.fill"))
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [searchViewController, UINavigationController(rootViewController: collectionsViewController)]
        
    }
    
    
    
    
}
