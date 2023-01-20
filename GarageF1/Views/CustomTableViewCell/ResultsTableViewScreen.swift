//
//  ResultsTableViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/01/23.
//

import UIKit

class ResultsTableViewScreen: UIView {
    
    lazy var indiceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var imagePilot: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 45
        image.clipsToBounds = true
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor.lightGray.cgColor
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var namePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var nameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    lazy var score: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.components()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func components() {
        addSubview(indiceLabel)
        addSubview(imagePilot)
        addSubview(namePilot)
        addSubview(nameTeams)
        addSubview(score)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            indiceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            indiceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            indiceLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -360),
            indiceLabel.heightAnchor.constraint(equalToConstant: 90),
            
            imagePilot.centerYAnchor.constraint(equalTo: centerYAnchor),
            imagePilot.leadingAnchor.constraint(equalTo: indiceLabel.leadingAnchor, constant: 30),
            imagePilot.heightAnchor.constraint(equalToConstant: 90),
            imagePilot.widthAnchor.constraint(equalToConstant: 90),
            
            namePilot.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            namePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 140),
            namePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            namePilot.heightAnchor.constraint(equalToConstant: 20),
            
            nameTeams.topAnchor.constraint(equalTo: namePilot.topAnchor, constant: 20),
            nameTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 140),
            nameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            nameTeams.heightAnchor.constraint(equalToConstant: 20),
            
            score.centerYAnchor.constraint(equalTo: centerYAnchor),
            score.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 280),
            score.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            score.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
    
}
