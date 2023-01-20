//
//  EmailLoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit
import Firebase

class EmailLoginVC: UIViewController {
    
    var emailLoginScreen: EmailLoginScreen? = EmailLoginScreen()
    var alert: Alert?
    var auth: Auth?
    
    override func loadView() {
        view = emailLoginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLoginScreen?.delegate(delegate: self)
        emailLoginScreen?.configTextFieldDelegate(delegate: self)
        alert = Alert(controller: self)
        auth = Auth.auth()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension EmailLoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        emailLoginScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension EmailLoginVC: emailLoginScreenProtocol {
    
    func actionLoginButton() {
        
        let tabBarHome: TabBarVC = TabBarVC()

        guard let login = emailLoginScreen else { return }
        
        auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { (usuario, error) in
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção!", message: "Dados incorretos, verifique e tente novamente!")
                
            } else {
                if usuario == nil {
                    self.alert?.getAlert(titulo: "Atenção", message: "Tivemos um problema inesperado, tente novamente mais tarde")
                } else {
                    
                    self.navigationController?.pushViewController(tabBarHome, animated: true)
                }
            }
        })
    }
    
    func actionRegisterButton() {
        let registerLoginVC: RegisterLoginVC = RegisterLoginVC()
        navigationController?.pushViewController(registerLoginVC, animated: true)
    }
    
    func actionBackButton() {
        navigationController?.popToRootViewController(animated: true)
    }
}
