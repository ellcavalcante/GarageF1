//
//  RegisterLoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit
import Firebase

class RegisterLoginVC: UIViewController {
    
    let registerLoginScreen: RegisterLoginScreen? = RegisterLoginScreen()
    var auth: Auth?
    var alert: Alert?
    
    override func loadView() {
        view = registerLoginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        registerLoginScreen?.delegate(delegate: self)
        registerLoginScreen?.configTextFieldDelegate(delegate: self)
        auth = Auth.auth()
        alert = Alert(controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension RegisterLoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        registerLoginScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterLoginVC: registerScreenProtocol {
    func actionBackButton() {
        
        navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
        guard let register = registerLoginScreen else {return}
        
        auth?.createUser(withEmail: register.getEmail(), password: register.getPassword(), completion: { (result, error) in
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção", message: "Erro ao cadastrar, verifique e tente novamente!")
            } else {
                self.alert?.getAlert(titulo: "Parabéns", message: "Usuário cadastrado com sucesso", completion: {
                    self.navigationController?.popViewController(animated: true)
                })
            }
        })
    }
    
    
}

