//
//  LoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/12/22.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import FirebaseCore
import FirebaseAuth
import AuthenticationServices
import CryptoKit


class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen? = LoginScreen()
    private var currentNonce: String?
    
    override func loadView() {
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        
        if let token = AccessToken.current,
                !token.isExpired {
                // User is logged in, do work such as go to next view controller.
            }

        }
    }

extension LoginVC: loginScreenProtocol {
    
    func actionAppleLoginButton() {
        
    }
    
    func actionLoginFacebookButton() {
        
    }
    
    
    
    
    func actionLoginEmailButton() {
        let emailLoginVC: EmailLoginVC = EmailLoginVC()
        self.navigationController?.pushViewController(emailLoginVC, animated: true)
    }
}

func loginButtonDidLogOut(_ loginButton: FBSDKLoginKit.FBLoginButton) {
    print("LogOut")
}




