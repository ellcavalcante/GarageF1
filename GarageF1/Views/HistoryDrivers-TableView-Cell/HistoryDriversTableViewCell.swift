//
//  HistoryDriversTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 24/01/23.
//

import UIKit

class HistoryDriversTableViewCell: UITableViewCell {

    var data: [DriversHistory] = []
    static let identifier: String = "HistoryDriversTableViewCell"
    var customDrivers: CustomHistoryDriversTableViewScreen = CustomHistoryDriversTableViewScreen()
    //mudar em cima
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func dataTableView(data: [DriversHistory]) {
        self.data = data
    }
    
    func addComponents() {
        customDrivers.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customDrivers)
    }

    func setupCell(data: DriversHistory){
        
        customDrivers.positionLabel.text = data.position
        customDrivers.nameLabel.text = data.driversName
        customDrivers.teamLabel.text = data.teamsName
        customDrivers.pointsLabel.text = data.seasonPoints
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            customDrivers.leadingAnchor.constraint(equalTo: leadingAnchor),
            customDrivers.trailingAnchor.constraint(equalTo: trailingAnchor),
            customDrivers.topAnchor.constraint(equalTo: topAnchor),
            customDrivers.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
