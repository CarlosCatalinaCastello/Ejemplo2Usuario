//
//  UsuarioController.swift
//  Ejemplo2Usuario
//
//  Created by Carlos Catalina Castelló on 16/10/2023.
//

import UIKit

class UsuarioController: UIViewController {

    @IBOutlet weak var lbPassword: UILabel!
    @IBOutlet weak var lbEmail: UILabel!
    
    var usuario : Usuario!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbEmail.text = usuario?.email
        lbPassword.text = usuario?.password
    }
    
}
