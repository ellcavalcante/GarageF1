//
//  DestaquesCollectionViewCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 14/01/23.
//

import UIKit

class DestaquesCollectionViewCellScreen: UIView {
    
    lazy var indicePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .black
//        label.backgroundColor = .brown
        return label
    }()
    
    lazy var namePilot1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.numberOfLines = 0
        label.textColor = .black
//        label.backgroundColor = .blue
        return label
    }()
    
    lazy var nameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
//        label.backgroundColor = .green
        return label
    }()
    
    
    lazy var pilot1: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
//        image.backgroundColor = .magenta
        return image
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addComponents()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {

        addSubview(indicePilot)
        addSubview(namePilot1)
        addSubview(nameTeams)
        addSubview(pilot1)
        
       
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            pilot1.topAnchor.constraint(equalTo: topAnchor, constant: 90),
            pilot1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 170),
            pilot1.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilot1.heightAnchor.constraint(equalToConstant: 100),
            
            namePilot1.topAnchor.constraint(equalTo: indicePilot.bottomAnchor, constant: 30),
            namePilot1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            namePilot1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
         
            
            indicePilot.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            indicePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            indicePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -230),
            
            
            nameTeams.topAnchor.constraint(equalTo: namePilot1.bottomAnchor, constant: 2),
            nameTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
        
        ])
    }
}
