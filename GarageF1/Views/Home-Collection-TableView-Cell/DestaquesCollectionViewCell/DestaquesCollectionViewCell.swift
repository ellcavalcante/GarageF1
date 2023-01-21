//
//  DestaquesCollectionViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 14/01/23.
//

import UIKit

class DestaquesCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "DestaquesCollectionViewCell"
    var data: [HomeRacer] = []
    let destaquesCollectionViewCellScreen: DestaquesCollectionViewCellScreen = DestaquesCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
        setUpConstraints()
    }
    
    func setupCell(data: HomeRacer) {
        destaquesCollectionViewCellScreen.pilot1.image = UIImage(named: data.name)
        destaquesCollectionViewCellScreen.namePilot1.text = data.nameImage
        destaquesCollectionViewCellScreen.nameTeams.text = data.nameTeams
        destaquesCollectionViewCellScreen.indicePilot.text = data.indice
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {
        destaquesCollectionViewCellScreen.layer.borderWidth = 0.5
        destaquesCollectionViewCellScreen.layer.borderColor = UIColor.darkGray.cgColor
        destaquesCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(destaquesCollectionViewCellScreen)
    }
    
    func dataCollection(data: [HomeRacer]) {
        self.data = data
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            destaquesCollectionViewCellScreen.topAnchor.constraint(equalTo: topAnchor),
            destaquesCollectionViewCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            destaquesCollectionViewCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
            destaquesCollectionViewCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}
