//
//  Alert.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import Foundation
import UIKit

class Alert: NSObject {
    
    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
}

    func getAlert(titulo: String, message: String, completion:(() -> Void)? = nil) {
    
        let alertController = UIAlertController(title: titulo, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "OK", style: .cancel) { (acao) in
            completion?()
        }
        
        alertController.addAction(cancel)
        self.controller.present(alertController, animated: true, completion: nil)
    }
}
