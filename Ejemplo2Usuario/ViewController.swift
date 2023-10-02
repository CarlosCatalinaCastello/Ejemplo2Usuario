//
//  ViewController.swift
//  Ejemplo2Usuario
//
//  Created by Carlos Catalina Castelló on 02/10/2023.
//

import UIKit
import Toast

class ViewController: UIViewController {
   //VARIABLES DE VISTA
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    //VARIABLES LÓGICAS
    var listaUsuarios:[Usuario]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listaUsuarios = []
    }
    
    @IBAction func registrarUsuarios(_ sender: Any) {
        let email: String = txtEmail.text!
        let password: String = txtPassword.text!
        
        let usuario: Usuario = Usuario(email: email, password: password)
        
        listaUsuarios.append(usuario)
        
        self.view.makeToast("número de usuarios: \(listaUsuarios.count)")
        
        txtEmail.text=""
        txtPassword.text=""
    }
    
    
    
}

