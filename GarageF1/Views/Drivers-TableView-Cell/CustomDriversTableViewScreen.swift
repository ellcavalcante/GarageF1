//
//  CustomDriversTableViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 20/01/23.
//

import UIKit

class CustomDriversTableViewScreen: UIView {
    
    lazy var positionLabel: UILabel = {
        let positionLabel = UILabel()
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.font = UIFont.systemFont(ofSize: 27)
        return positionLabel
    }()
        
    lazy var photoDriverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.boldSystemFont(ofSize: 23)
        return nameLabel
    }()
    
    lazy var teamLabel: UILabel = {
        let teamLabel = UILabel()
        teamLabel.translatesAutoresizingMaskIntoConstraints = false
        teamLabel.font = UIFont.systemFont(ofSize: 18)
        return teamLabel
    }()
    
    lazy var pointsLabel: UILabel = {
        let pointsLabel = UILabel()
        pointsLabel.translatesAutoresizingMaskIntoConstraints = false
        pointsLabel.font = UIFont.boldSystemFont(ofSize: 22)
        return pointsLabel
    }()
    
    lazy var ptsLabel: UILabel = {
        let pts = UILabel()
        pts.translatesAutoresizingMaskIntoConstraints = false
        pts.text = "pts"
        pts.font = UIFont.systemFont(ofSize: 18)
        return pts
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.configConstraintsInfoDriver()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews(){
        addSubview(positionLabel)
        addSubview(photoDriverImageView)
        addSubview(nameLabel)
        addSubview(teamLabel)
        addSubview(pointsLabel)
        addSubview(ptsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            positionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            positionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            photoDriverImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            photoDriverImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            photoDriverImageView.heightAnchor.constraint(equalToConstant: 50),
            photoDriverImageView.widthAnchor.constraint(equalToConstant: 50),

            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),

            teamLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1),
            teamLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),

            pointsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 23),
            pointsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            pointsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            ptsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            ptsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            ptsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }

}
