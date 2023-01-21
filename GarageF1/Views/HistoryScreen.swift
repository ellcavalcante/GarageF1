//
//  HistoryScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class HistoryScreen: UIView {
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        // Precisa colocar a cor certa
        return label
    }()
    
    lazy var historyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "História"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
   

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        backgroundColor()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(topLabel)
        addSubview(historyLabel)
        
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 120),
            
            historyLabel.topAnchor.constraint(equalTo: topAnchor, constant: 55),
            historyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
}
