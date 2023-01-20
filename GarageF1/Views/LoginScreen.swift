//
//  LoginScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/12/22.
//

import UIKit
import FBSDKLoginKit
import AuthenticationServices


protocol loginScreenProtocol: AnyObject {
    func actionLoginEmailButton()
    func actionLoginFacebookButton()
    func actionAppleLoginButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: loginScreenProtocol?
    func delegate(delegate: loginScreenProtocol?) {
        self.delegate = delegate
    }
    
    
    private lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var appleButton: ASAuthorizationAppleIDButton = {
        let button = ASAuthorizationAppleIDButton()
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Continuar com Apple", for: .normal)
//       button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
//        button.setTitleColor(.black, for: .normal)
//        button.clipsToBounds = true
////        button.setImage(UIImage(named: "appleicon"), for: .normal)
//        button.layer.cornerRadius = 7.5
//        button.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 252/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedAppleButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var facebookButton: FBLoginButton = {
        let button = FBLoginButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.addTarget(self, action: #selector(tappedFacebookButton), for: .touchUpInside)
//        button.permissions = ["public_profile", "email"]
        return button
    }()
    
    private lazy var emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continuar com E-mail", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.setImage(UIImage(named: "iconeemail1"), for: .normal)
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedEmailButton), for: .touchUpInside)
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
    
    @objc func tappedFacebookButton(){
        delegate?.actionLoginFacebookButton()
    }
    
    @objc func tappedEmailButton(){
        delegate?.actionLoginEmailButton()
    }
    
    @objc func tappedAppleButton(){
        delegate?.actionAppleLoginButton()
    }
    
    private func configBackground() {
        backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1.0)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            logoImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            
            appleButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 60),
            appleButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            appleButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            appleButton.heightAnchor.constraint(equalToConstant: 45),
            
            facebookButton.topAnchor.constraint(equalTo: appleButton.bottomAnchor, constant: 15),
            facebookButton.leadingAnchor.constraint(equalTo: appleButton.leadingAnchor),
            facebookButton.trailingAnchor.constraint(equalTo: appleButton.trailingAnchor),
            facebookButton.heightAnchor.constraint(equalTo: appleButton.heightAnchor),
            
            emailButton.topAnchor.constraint(equalTo: facebookButton.bottomAnchor, constant: 15),
            emailButton.leadingAnchor.constraint(equalTo: facebookButton.leadingAnchor),
            emailButton.trailingAnchor.constraint(equalTo: facebookButton.trailingAnchor),
            emailButton.heightAnchor.constraint(equalTo: facebookButton.heightAnchor),
            
        ])
    }
}
