//
//  LoginScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/12/22.
//

import UIKit

protocol loginScreenProtocol: AnyObject {
    func actionLoginButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: loginScreenProtocol?
    func delegate(delegate: loginScreenProtocol?) {
        self.delegate = delegate
    }
    
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var appleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continuar com Apple", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0)
        //        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continuar com Facebook", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0)
        //        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continuar com E-mail", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        setUpConstraints()
        configBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(logoImage)
        addSubview(appleButton)
        addSubview(facebookButton)
        addSubview(emailButton)
    }
    
    @objc func tappedLoginButton(){
        delegate?.actionLoginButton()
    }
    
    private func configBackground() {
        backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1.0)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.logoImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 60),
            self.logoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            self.logoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            self.logoImage.heightAnchor.constraint(equalToConstant: 200),
            
            self.appleButton.topAnchor.constraint(equalTo: self.logoImage.bottomAnchor, constant: 60),
            self.appleButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.appleButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.appleButton.heightAnchor.constraint(equalToConstant: 45),
            
            self.facebookButton.topAnchor.constraint(equalTo: self.appleButton.bottomAnchor, constant: 15),
            self.facebookButton.leadingAnchor.constraint(equalTo: self.appleButton.leadingAnchor),
            self.facebookButton.trailingAnchor.constraint(equalTo: self.appleButton.trailingAnchor),
            self.facebookButton.heightAnchor.constraint(equalTo: self.appleButton.heightAnchor),
            
            self.emailButton.topAnchor.constraint(equalTo: self.facebookButton.bottomAnchor, constant: 15),
            self.emailButton.leadingAnchor.constraint(equalTo: self.facebookButton.leadingAnchor),
            self.emailButton.trailingAnchor.constraint(equalTo: self.facebookButton.trailingAnchor),
            self.emailButton.heightAnchor.constraint(equalTo: self.facebookButton.heightAnchor),
            
        ])
    }
}
