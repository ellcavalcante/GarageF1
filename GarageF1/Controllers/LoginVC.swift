//
//  LoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/12/22.
//

import UIKit
import FBSDKLoginKit
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


extension LoginVC: loginScreenProtocol, LoginButtonDelegate {
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginKit.FBLoginButton) {
        //sem codigo até agora
    }
    
    
    func loginButton(_ loginButton: FBSDKLoginKit.FBLoginButton, didCompleteWith result: FBSDKLoginKit.LoginManagerLoginResult?, error: Error?) {
        
        guard let token = result?.token?.tokenString else {
            print("User failed to log in with facebook")
            return
        }
        
        let credential = FacebookAuthProvider.credential(withAccessToken: token)
        
        FirebaseAuth.Auth.auth().signIn(with: credential, completion: { authResult, error in

            guard authResult != nil, error == nil else {
                if let error = error {
                    print("Facebook credential login failed MFA may be needed - \(error)")
                }
                return
            }
            print("Successfully logged user in")
        })
    }

    
    
    func actionAppleLoginButton() {
        

        
        
    }
    
    func actionLoginFacebookButton() {
            
        

    }
    
    func actionLoginEmailButton() {
        let emailLoginVC: EmailLoginVC = EmailLoginVC()
        self.navigationController?.pushViewController(emailLoginVC, animated: true)
    }
}





