//
//  HomeScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 09/01/23.
//

import UIKit

protocol homeScreenProtocol: AnyObject {
    func actionSimulationButton()
}


class HomeScreen: UIView {
    
    private weak var delegate: homeScreenProtocol?
    func delegate(delegate: homeScreenProtocol?) {
        self.delegate = delegate
    }
    
    
    
//    private lazy var scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.showsVerticalScrollIndicator = true
//        scrollView.isDirectionalLockEnabled = true
//        scrollView.showsHorizontalScrollIndicator = false
////        scrollView.backgroundColor = .systemBlue
//        let contentViewHeightConstraint = scrollView.heightAnchor.constraint(equalTo: self.heightAnchor)
//        contentViewHeightConstraint.priority = .defaultLow
//        return scrollView
//    }()
//
//    private lazy var contentView: UIView = {
//        let contentView = UIView()
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        return contentView
//    }()
    
//    private lazy var stackView: UIStackView = {
//       let stackView = UIStackView()
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .vertical
//        return stackView
//    }()
//    
    private lazy var bemVindoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem-Vindo!"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 25)
        //        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ellington Cavalcante"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        //        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    private lazy var destaquesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Destaques da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        //        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    private lazy var destaquesCollection: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.delaysContentTouches = false
        collection.register(DestaquesCollectionViewCell.self, forCellWithReuseIdentifier: DestaquesCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collection.setCollectionViewLayout(layout, animated: false)
//                collection.backgroundColor = .brown
        return collection
    }()
    
    private lazy var simulationButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Faça sua simulação", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedSimulationButton), for: .touchUpInside)
//        button.backgroundColor = .blue
        return button
    }()
    
    private lazy var quemEMelhor: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quem é melhor?"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        //        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    private lazy var dueloCollection: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.delaysContentTouches = false
        collection.register(DueloCollectionViewCell.self, forCellWithReuseIdentifier: DueloCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collection.setCollectionViewLayout(layout, animated: false)
        collection.backgroundColor = .brown
        return collection
    }()
    
    private lazy var resultadosDaTemporada: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Resultados da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        //        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .darkGray
        tableView.register(ResultsTableViewCell.self, forCellReuseIdentifier: ResultsTableViewCell.identifier)
        return tableView
        
    }()
    
    private lazy var completeResultButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Conferir resultado completo", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .blue
        return button
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
    
    @objc func tappedSimulationButton(){
        delegate?.actionSimulationButton()
    }
    
    private func addElements() {
        
//        addSubview(scrollView)
//        addSubview(contentView)
//        addSubview(stackView)
//        stackView.addArrangedSubview(bemVindoLabel)
//        stackView.addArrangedSubview(userNameLabel)
//        stackView.addArrangedSubview(destaquesLabel)
//        stackView.addArrangedSubview(destaquesCollection)
//        stackView.addArrangedSubview(simulationButton)
//        stackView.addArrangedSubview(quemEMelhor)
//        stackView.addArrangedSubview(dueloCollection)
//        stackView.addArrangedSubview(resultadosDaTemporada)
//        stackView.addArrangedSubview(tableView)
//        stackView.addArrangedSubview(completeResultButton)

        addSubview(bemVindoLabel)
        addSubview(userNameLabel)
        addSubview(destaquesLabel)
        addSubview(destaquesCollection)
        addSubview(simulationButton)
        addSubview(quemEMelhor)
        addSubview(dueloCollection)
        addSubview(resultadosDaTemporada)
        addSubview(tableView)
        addSubview(completeResultButton)
        
    }
    
    func configTableViewDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func configProtocolsDestaqueCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        destaquesCollection.delegate = delegate
        destaquesCollection.dataSource = dataSource
    }
    
    func configProtocolsDueloCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        dueloCollection.delegate = delegate
        dueloCollection.dataSource = dataSource
    }
    
    private func backGroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
//            scrollView.topAnchor.constraint(equalTo: topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
//
//            contentView.topAnchor.constraint(equalTo: topAnchor),
//            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
//
//
//            stackView.topAnchor.constraint(equalTo: topAnchor),
//            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            bemVindoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            bemVindoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            bemVindoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -230),
            bemVindoLabel.heightAnchor.constraint(equalToConstant: 20),
            
            userNameLabel.topAnchor.constraint(equalTo: bemVindoLabel.bottomAnchor, constant: 5),
            userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -220),
            userNameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            destaquesLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 9),
            destaquesLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            destaquesLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
            destaquesLabel.heightAnchor.constraint(equalToConstant: 20),
            
            destaquesCollection.topAnchor.constraint(equalTo: destaquesLabel.topAnchor, constant: 20),
            destaquesCollection.leadingAnchor.constraint(equalTo: leadingAnchor),
            destaquesCollection.trailingAnchor.constraint(equalTo: trailingAnchor),
            destaquesCollection.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -500),
            
            quemEMelhor.topAnchor.constraint(equalTo: destaquesCollection.bottomAnchor, constant: 9),
            quemEMelhor.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            quemEMelhor.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
            quemEMelhor.heightAnchor.constraint(equalToConstant: 20),
            
            dueloCollection.topAnchor.constraint(equalTo: quemEMelhor.bottomAnchor, constant: 9),
            dueloCollection.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            dueloCollection.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            dueloCollection.heightAnchor.constraint(equalToConstant: 200),
            
            simulationButton.topAnchor.constraint(equalTo: dueloCollection.bottomAnchor, constant: 5),
            simulationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 220),
            simulationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            simulationButton.heightAnchor.constraint(equalToConstant: 20),
            
            resultadosDaTemporada.topAnchor.constraint(equalTo: simulationButton.bottomAnchor, constant: 15),
            resultadosDaTemporada.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            resultadosDaTemporada.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -130),
            resultadosDaTemporada.heightAnchor.constraint(equalToConstant: 20),
            
            tableView.topAnchor.constraint(equalTo: resultadosDaTemporada.topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            completeResultButton.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 5),
            completeResultButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150),
            completeResultButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            completeResultButton.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
}
