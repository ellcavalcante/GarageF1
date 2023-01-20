//
//  DueloCollectionViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 18/01/23.
//

import UIKit

class DueloCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "DueloCollectionViewCell"
    var data: [HomeDuel] = []
    let dueloCollectionViewCellScreen: DueloCollectionViewScreen = DueloCollectionViewScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: HomeDuel) {
        
        dueloCollectionViewCellScreen.namePilot.text = data.namePilot
        dueloCollectionViewCellScreen.imagePilot.image = UIImage(named: data.imagePilot)

    }
    
    private func addComponents() {
        dueloCollectionViewCellScreen.layer.borderWidth = 0.5
        dueloCollectionViewCellScreen.layer.borderColor = UIColor.darkGray.cgColor
        dueloCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dueloCollectionViewCellScreen)
    }
    
    func dataCollection(data: [HomeDuel]) {
        self.data = data
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            dueloCollectionViewCellScreen.topAnchor.constraint(equalTo: topAnchor),
            dueloCollectionViewCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            dueloCollectionViewCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
            dueloCollectionViewCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}

    

