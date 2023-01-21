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
        return navController
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
        
        func setupVCs() {
                viewControllers = [
                    createNavController(for: HomeVC(), title: "Home", image: UIImage(systemName: "house") ?? UIImage()),
                    createNavController(for: RacingVC(), title: "Racing", image: UIImage(systemName: "flag.checkered.2.crossed") ?? UIImage()),
                    createNavController(for: DriversVC(), title: "Drivers", image: UIImage(systemName: "crown") ?? UIImage()),
                    createNavController(for: HistoryVC(), title: "History", image: UIImage(systemName: "doc.text.magnifyingglass") ?? UIImage())
                ]
        }
    
    
    func configTaBar() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
    
}
