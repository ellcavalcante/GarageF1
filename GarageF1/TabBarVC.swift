//
//  TabBarVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/12/22.
//

import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setupVCs()
            configTaBar()
    }
    
    private func createNavController(for rootViewController: UIViewController,
                                     title: String,
                                     image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
        
        func setupVCs() {
                viewControllers = [
                    createNavController(for: Tela01(), title: "Home", image: UIImage(systemName: "house") ?? UIImage()),
                    createNavController(for: Tela02(), title: "Racing", image: UIImage(systemName: "flag.checkered.2.crossed") ?? UIImage()),
                    createNavController(for: Tela03(), title: "Drivers", image: UIImage(systemName: "crown") ?? UIImage()),
                    createNavController(for: Tela04(), title: "History", image: UIImage(systemName: "doc.text.magnifyingglass") ?? UIImage())
                ]
        }
    
    
    func configTaBar() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
    
}