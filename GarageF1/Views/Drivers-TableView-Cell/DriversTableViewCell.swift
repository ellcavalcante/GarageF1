//
//  DriversTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 20/01/23.
//

import UIKit

class DriversTableViewCell: UITableViewCell {

    var data: [Drivers] = []
    static let identifier: String = "DriversTableViewCell"
    var customDrivers: CustomDriversTableViewScreen = CustomDriversTableViewScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func dataTableView(data: [Drivers]) {
        self.data = data
    }
    
    func addComponents() {
        customDrivers.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customDrivers)
    }

    func setupCell(data: Drivers){
        
        customDrivers.positionLabel.text = data.position
        customDrivers.photoDriverImageView.image = data.driversPhoto
        customDrivers.nameLabel.text = data.driversName
        customDrivers.teamLabel.text = data.teamsName
        customDrivers.pointsLabel.text = data.currentcurrentPoints
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



