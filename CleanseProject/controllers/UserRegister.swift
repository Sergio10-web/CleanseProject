//
//  UserRegister.swift
//  CleanseProject
//
//  Created by user176688 on 2/11/21.
//  Copyright © 2021 user176688. All rights reserved.
//

import UIKit

class UserRegister: UIViewController {
    
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var emailRegister: UITextField!
    @IBOutlet weak var nameRegister: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func enviarRegistro(_ sender: Any) {
        
        
        let username : String = nameRegister.text!
        let email : String = emailRegister.text!
        let pass : String = password.text!
        let confirmpassdword : String = confirmPassword.text!
        let puntos : String = "0"
        
        
        let parametros : [String: String] = [
                   
                   "username": username,
                   "password": pass,
                   "email":email,
                   "password_confirmation":confirmpassdword,
                   "points":puntos
                   
               ]
        
        
        Request.shared.register(parameters: parametros).responseJSON{ response in
                
                
                
                debugPrint(response)
        }
        
    }
    
 }
