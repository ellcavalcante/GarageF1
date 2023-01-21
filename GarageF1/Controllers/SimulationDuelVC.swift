//
//  SimulationDuelVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class SimulationDuelVC: UIViewController {
    
    var simulationDuelScreen: SimulationDuelScreen = SimulationDuelScreen()
    
    override func loadView() {
        view = simulationDuelScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        simulationDuelScreen.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
}

extension SimulationDuelVC: backHomeVC {
    func tappedBackButton() {
        navigationController?.popToRootViewController(animated: true)
    }
}
