//
//  DueloCollectionViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 18/01/23.
//

import UIKit

class DueloCollectionViewScreen: UIView {

    lazy var namePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .black
//        label.backgroundColor = .brown
        return label
    }()
    
    lazy var imagePilot: UIImageView = {
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

        addSubview(namePilot)
        addSubview(imagePilot)
       
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            namePilot.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            namePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            namePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
         
            imagePilot.topAnchor.constraint(equalTo: namePilot.topAnchor, constant: 5),
            imagePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imagePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -250),
            imagePilot.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
}
    

