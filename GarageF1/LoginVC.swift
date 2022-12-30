//
//  LoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/12/22.
//

import UIKit
import FBSDKLoginKit


class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen? = LoginScreen()

    override func loadView() {
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        
        
                
        
    }
}

extension LoginVC: loginScreenProtocol {

    func actionLoginFacebookButton() {
        
      }
    
    
    
    func actionLoginEmailButton() {
        let emailLoginVC: EmailLoginVC = EmailLoginVC()
        self.navigationController?.pushViewController(emailLoginVC, animated: true)
        }
    }

