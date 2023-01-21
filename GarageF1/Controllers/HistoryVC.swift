//
//  HistoryVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class HistoryVC: UIViewController {
    
    var historyScreen: HistoryScreen = HistoryScreen()
    
    override func loadView() {
        view = historyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
}
