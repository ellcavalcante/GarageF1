//
//  ResultsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/01/23.
//

import UIKit

class ResultsTableViewCell: UITableViewCell {
    
    static let identifier: String = "ResultsTableViewCell"
    var data: [HomeResults] = []
    let resultsTableViewScreen: ResultsTableViewScreen = ResultsTableViewScreen()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addComponents()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: HomeResults) {
        resultsTableViewScreen.indiceLabel.text = data.indice
        resultsTableViewScreen.imagePilot.image = UIImage(named: data.imagePilot)
        resultsTableViewScreen.namePilot.text = data.namePilot
        resultsTableViewScreen.nameTeams.text = data.nameTeams
        resultsTableViewScreen.score.text = data.score
    }
    
    public func dataTableView(data: [HomeResults]) {
        self.data = data
    }
    
    private func addComponents() {
        resultsTableViewScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(resultsTableViewScreen)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            resultsTableViewScreen.topAnchor.constraint(equalTo: topAnchor),
            resultsTableViewScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            resultsTableViewScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            resultsTableViewScreen.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
    }

}
