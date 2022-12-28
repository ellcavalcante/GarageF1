//
//  EmailLoginScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit

protocol emailLoginScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
    func actionLoginButton()
}

class EmailLoginScreen: UIView {
    
    private weak var delegate: emailLoginScreenProtocol?
    func delegate(delegate: emailLoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var backButton: UIButton = {
        let bButton = UIButton()
        bButton.translatesAutoresizingMaskIntoConstraints = false
        bButton.setImage(UIImage(named: "back1"), for: .normal)
        bButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return bButton
    }()

    lazy var imageRegister: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.backgroundColor = .white
        email.borderStyle = .roundedRect
        email.autocapitalizationType = .none
        email.keyboardType = .emailAddress
        email.placeholder = "Digite seu e-mail:"
        email.textColor = .darkGray
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no
        password.backgroundColor = .white
        password.borderStyle = .roundedRect
        password.autocapitalizationType = .none
        password.keyboardType = .default
        password.isSecureTextEntry = true
        password.placeholder = "Digite sua senha:"
        password.textColor = .darkGray
        return password
    }()
    
    lazy var esqueceuSenhaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu sua senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 242/255, green: 24/255, blue: 2/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedSignInButtonButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar-se", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0)
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configBackground()
        setUpConstraints()
        configButtonEnable(false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(backButton)
        addSubview(imageRegister)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(signInButton)
        addSubview(registerButton)
        addSubview(esqueceuSenhaButton)
    }
    
    @objc func tappedSignInButtonButton(){
        delegate?.actionLoginButton()
    }
    
    @objc func tappedRegisterButton(){
        delegate?.actionRegisterButton()
    }
    
    @objc func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    public func validaTextFields() {
        let email: String = emailTextField.text ?? ""
        let password: String = passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            configButtonEnable(true)
        } else {
            configButtonEnable(false)
        }
    }
    
    private func configButtonEnable(_ enable: Bool) {
        if enable {
            signInButton.setTitleColor(.white, for: .normal)
            signInButton.isEnabled = true
        } else {
            signInButton.setTitleColor(.lightGray, for: .normal)
            signInButton.isEnabled = false
        }
    }
    
    public func getEmail()-> String{
        return emailTextField.text ?? ""
    }
    
    public func getPassword()-> String{
        return passwordTextField.text ?? ""
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    private func configBackground() {
        backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1.0)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            self.imageRegister.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 60),
            self.imageRegister.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            self.imageRegister.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            self.imageRegister.heightAnchor.constraint(equalToConstant: 200),
            

            self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),

            self.emailTextField.topAnchor.constraint(equalTo: imageRegister.bottomAnchor, constant: 20),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45),

            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 15),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.passwordTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            self.esqueceuSenhaButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 3),
            self.esqueceuSenhaButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 230),
            self.esqueceuSenhaButton.trailingAnchor.constraint(equalTo: self.passwordTextField.trailingAnchor),
            self.signInButton.heightAnchor.constraint(equalTo: self.passwordTextField.heightAnchor),
            

            self.signInButton.topAnchor.constraint(equalTo: self.esqueceuSenhaButton.bottomAnchor, constant: 20),
            self.signInButton.leadingAnchor.constraint(equalTo: self.passwordTextField.leadingAnchor),
            self.signInButton.trailingAnchor.constraint(equalTo: self.passwordTextField.trailingAnchor),
            self.signInButton.heightAnchor.constraint(equalTo: self.passwordTextField.heightAnchor),
            
            self.registerButton.topAnchor.constraint(equalTo: self.signInButton.bottomAnchor, constant: 15),
            self.registerButton.leadingAnchor.constraint(equalTo: self.signInButton.leadingAnchor),
            self.registerButton.trailingAnchor.constraint(equalTo: self.signInButton.trailingAnchor),
            self.registerButton.heightAnchor.constraint(equalTo: self.signInButton.heightAnchor)
        ])
    }
}
