//
//  DriversVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 20/01/23.
//

import UIKit

class DriversVC: UIViewController {
    
    var driversScreen: DriversScreen? = DriversScreen()
    
    var dataDrivers: [Drivers] = [Drivers(position: "1", driversPhoto: UIImage(named: "Leclerc") ?? UIImage(), driversName: "Charles Leclerc", teamsName: "Ferrari", currentcurrentPoints: "86"),
                                  Drivers(position: "2", driversPhoto: UIImage(named: "Max") ?? UIImage(), driversName: "Max Verstappen", teamsName: "Red Bull Racing", currentcurrentPoints: "80"),
                                  Drivers(position: "3", driversPhoto: UIImage(named: "Perez") ?? UIImage(), driversName: "Sergio Perez", teamsName: "Red Bull Racing", currentcurrentPoints: "74"),
                                  Drivers(position: "4", driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos Sainz", teamsName: "Ferrari", currentcurrentPoints: "62"),
                                  Drivers(position: "5", driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando Norris", teamsName: "McLaren", currentcurrentPoints: "55"),
                                  Drivers(position: "6", driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis Hamilton", teamsName: "Mercedes", currentcurrentPoints: "42"),
                                  Drivers(position: "7", driversPhoto: UIImage(named: "Vettel") ?? UIImage(), driversName: "Sebastian Vettel", teamsName: "Aston Martin", currentcurrentPoints: "33"),
                                  Drivers(position: "8", driversPhoto: UIImage(named: "Bottas") ?? UIImage(), driversName: "Valtteri Bottas", teamsName: "Alfa Romeo", currentcurrentPoints: "28"),
                                  Drivers(position: "9", driversPhoto: UIImage(named: "george") ?? UIImage(), driversName: "George Russel", teamsName: "Mercedes", currentcurrentPoints: "24")]
    
    
    override func loadView() {
        
      view = driversScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        driversScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
}


extension DriversVC: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDrivers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: DriversTableViewCell.identifier) as? DriversTableViewCell
        cell?.setupCell(data: dataDrivers[indexPath.row])
        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
        
}
