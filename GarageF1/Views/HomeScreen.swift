//
//  HomeScreen1.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 09/01/23.
//

import UIKit

class HomeScreen1: UIView {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.backgroundColor = .systemBlue
        return scrollView
    }()
    
    lazy var bemVindoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem-Vindo!"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 25)
//        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ellington Cavalcante"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
//        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    lazy var destaquesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Destaques da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
//        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    lazy var destaquesImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "destaquesImage")
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        return image
    }()
    
    lazy var quemEMelhor: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quem é melhor?"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
//        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "quemEMelhor")
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        return image
    }()
    
    lazy var resultadosDaTemporada: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Resultados da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
//        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .black
        return tableView
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        backGroundColor()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(scrollView)
        addSubview(tableView)
        addSubview(bemVindoLabel)
        addSubview(userNameLabel)
        addSubview(destaquesLabel)
        addSubview(destaquesImage)
        addSubview(quemEMelhor)
        addSubview(logoImage)
        addSubview(resultadosDaTemporada)
        
    }
    
    public func configTableViewDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    private func backGroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.scrollView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            
            self.bemVindoLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 70),
            self.bemVindoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.bemVindoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -230),
            self.bemVindoLabel.heightAnchor.constraint(equalToConstant: 20),
            
            self.userNameLabel.topAnchor.constraint(equalTo: self.bemVindoLabel.bottomAnchor, constant: 5),
            self.userNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.userNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -220),
            self.userNameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            self.destaquesLabel.topAnchor.constraint(equalTo: self.userNameLabel.bottomAnchor, constant: 9),
            self.destaquesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.destaquesLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -130),
            self.destaquesLabel.heightAnchor.constraint(equalToConstant: 20),
            
            self.destaquesImage.topAnchor.constraint(equalTo: self.destaquesLabel.topAnchor, constant: 40),
            self.destaquesImage.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.destaquesImage.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.destaquesImage.heightAnchor.constraint(equalToConstant: 200),
            
            self.quemEMelhor.topAnchor.constraint(equalTo: self.destaquesImage.bottomAnchor, constant: 9),
            self.quemEMelhor.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.quemEMelhor.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -130),
            self.quemEMelhor.heightAnchor.constraint(equalToConstant: 20),
            
            self.logoImage.topAnchor.constraint(equalTo: self.quemEMelhor.bottomAnchor, constant: 9),
            self.logoImage.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.logoImage.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.logoImage.heightAnchor.constraint(equalToConstant: 200),
            
            self.resultadosDaTemporada.topAnchor.constraint(equalTo: self.logoImage.bottomAnchor, constant: 9),
            self.resultadosDaTemporada.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.resultadosDaTemporada.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -130),
            self.resultadosDaTemporada.heightAnchor.constraint(equalToConstant: 20),
            
            self.tableView.topAnchor.constraint(equalTo: self.resultadosDaTemporada.topAnchor, constant: 40),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
