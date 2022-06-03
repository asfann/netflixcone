//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Mac on 01/06/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: UpcomnigViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage(systemName: "play.circle")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Top Search"
        vc3.title = "Coming Soon"
        vc4.title = "Downloads"
        tabBar.tintColor = .label 
        
        
       setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        
        
        
        
    }


}

