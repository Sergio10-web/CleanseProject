//
//  ProfileUser.swift
//  CleanseProject
//
//  Created by user176688 on 2/12/21.
//  Copyright © 2021 user176688. All rights reserved.
//

import UIKit

class ProfilePointsOferts: UIViewController {
    var userData : Userr?
   
    
    @IBOutlet weak var emailProfile: UILabel!
    @IBOutlet weak var pointsUser: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tokenUser:String = UserDefaults.standard.string(forKey: "token")!
            print(tokenUser)
            
        let parameters : [String: String] = [
            
                "token":tokenUser
        ]
    
        let request = Request.shared.InfoUser(parameters: parameters)
        print("Este es el token: ",tokenUser)
        request.response(completionHandler: { (response) in
             guard let data = response.data else {return}
            
            do{
             self.userData = try JSONDecoder().decode(Userr.self, from: data)
                self.emailProfile.text = self.userData?.email
                self.pointsUser.text = self.userData?.puntos
                
            debugPrint(response)
                }catch{
                    print("Error decoding == \(error)")
                }

    
        })
    

 
  }
   

}
 
