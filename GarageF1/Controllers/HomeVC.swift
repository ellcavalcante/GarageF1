//
//  HomeVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 07/01/23.
//

import UIKit

class HomeVC: UIViewController {
    
    let homeScreen: HomeScreen = HomeScreen()
    var dataHomeRacer: [HomeRacer] = [HomeRacer(indice: "1", nameTeams: "Red Bull Racing", name: "max", nameImage: "Max Verstappen"),
                                      HomeRacer(indice: "2", nameTeams: "Ferrari", name: "charles", nameImage: "Charles Leclerc")]
    
    var dataHomeResults: [HomeResults] = [HomeResults(indice: "1", imagePilot: "charles", namePilot: "Charles Leclerc", nameTeams: "Ferrari", score: "86 pts"),
                                          HomeResults(indice: "2", imagePilot: "max", namePilot: "Max Verstappen", nameTeams: "Red Bull Racing", score: "59 pts"),
                                          HomeResults(indice: "3", imagePilot: "sergio", namePilot: "Sergio Perez", nameTeams: "Red Bull Racing", score: "54 pts")]
    
    var dataHomeDuel: [HomeDuel] = [HomeDuel(namePilot: "Ayrton Senna", imagePilot: "ayrton"),
                                    HomeDuel(namePilot: "Lewis Hamilton", imagePilot: "lewis")]
    
    
    override func loadView() {
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen.configTableViewDelegate(delegate: self, dataSource: self)
        self.homeScreen.configProtocolsDestaqueCollectionView(delegate: self, dataSource: self)
        homeScreen.delegate(delegate: self)
//        self.homeScreen.configProtocolsDueloCollectionView(delegate: self, dataSource: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
}


extension HomeVC: homeScreenProtocol {
   
    func actionSimulationButton() {
        let simulationDuelVC: SimulationDuelVC = SimulationDuelVC()
        navigationController?.pushViewController(simulationDuelVC, animated: true)
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataHomeResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ResultsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: ResultsTableViewCell.identifier, for: indexPath) as? ResultsTableViewCell
        cell?.setupCell(data: dataHomeResults[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
            return self.dataHomeRacer.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            let cell1: DestaquesCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: DestaquesCollectionViewCell.identifier, for: indexPath) as? DestaquesCollectionViewCell
            cell1?.setupCell(data: dataHomeRacer[indexPath.row])
            
            return cell1 ?? UICollectionViewCell()
        }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

            return CGSize(width: 290, height: 190)
            
    }
}




