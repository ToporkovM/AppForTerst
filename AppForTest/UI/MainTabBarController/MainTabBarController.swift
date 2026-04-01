//
//  MainTabBarController.swift
//  AppForTest
//
//  Created by Максим on 01.04.2026.
//

import UIKit

final class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    private func setupTabs() {
        let mainVC = MainViewController()
        let networkVC = NetworkViewController()
        
        let mainNav = UINavigationController(rootViewController: mainVC)
        let networkNav = UINavigationController(rootViewController: networkVC)
        
        mainNav.tabBarItem = UITabBarItem(title: "Главная",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house.fill"))
        
        networkNav.tabBarItem = UITabBarItem(title: "Запросы",
                                             image: UIImage(systemName: "network"),
                                             selectedImage: UIImage(systemName: "network.fill"))
        
        viewControllers = [mainNav, networkNav]
    }
}
