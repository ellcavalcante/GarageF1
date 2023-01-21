//
//  SimulationDuelScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

protocol backHomeVC: AnyObject {
    func tappedBackButton()
}

class SimulationDuelScreen: UIView {
    
    private weak var delegate: backHomeVC?
    func delegate(delegate: backHomeVC?) {
        self.delegate = delegate
    }
    
    private lazy var backButton: UIButton = {
        let bButton = UIButton()
        bButton.translatesAutoresizingMaskIntoConstraints = false
        bButton.setImage(UIImage(named: "back1"), for: .normal)
        bButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return bButton
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.addSubview(self.backButton)
        backgroundColor = .magenta
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedBackButton() {
        delegate?.tappedBackButton()
    }


    private func configConstraintsTableView(){
        NSLayoutConstraint.activate([

            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),

        ])
    }

}
