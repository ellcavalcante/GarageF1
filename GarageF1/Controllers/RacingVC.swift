//
//  RacingVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class RacingVC: UIViewController {
    
    var racingScreen: RacingScreen = RacingScreen()
    
    override func loadView() {
        view = racingScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

}
