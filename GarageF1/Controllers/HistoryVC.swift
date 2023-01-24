//
//  HistoryVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class HistoryVC: UIViewController {
    
    var historyScreen: HistoryScreen? = HistoryScreen()
    
    var dataDrivers: [DriversHistory] = [DriversHistory(position: "1", driversName: "Charles Leclerc", teamsName: "Ferrari", seasonPoints: "86"),
        DriversHistory(position: "2", driversName: "Max Verstappen", teamsName: "Red Bull Racing", seasonPoints: "80"),
        DriversHistory(position: "3", driversName: "Sergio Perez", teamsName: "Red Bull Racing", seasonPoints: "74"),
        DriversHistory(position: "4", driversName: "Carlos Sainz", teamsName: "Ferrari", seasonPoints: "62"),
        DriversHistory(position: "5", driversName: "Lando Norris", teamsName: "McLaren", seasonPoints: "55"),
        DriversHistory(position: "6", driversName: "Lewis Hamilton", teamsName: "Mercedes", seasonPoints: "42"),
        DriversHistory(position: "7", driversName: "Sebastian Vettel", teamsName: "Aston Martin", seasonPoints: "33"),
        DriversHistory(position: "8", driversName: "Valtteri Bottas", teamsName: "Alfa Romeo", seasonPoints: "28"),
        DriversHistory(position: "9", driversName: "George Russel", teamsName: "Mercedes", seasonPoints: "24")]
    
    
    override func loadView() {
        view = historyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        historyScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
}

extension HistoryVC: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDrivers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HistoryDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryDriversTableViewCell.identifier) as? HistoryDriversTableViewCell
        cell?.setupCell(data: dataDrivers[indexPath.row])
        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
        
}
