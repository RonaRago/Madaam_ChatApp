//
//  ViewController.swift
//  Madaam_ChatApp
//
//  Created by Rona Rago on 26/09/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let ref = Database.database().reference(fromURL: "https://madaamchatapp.firebaseio.com/")
//        ref.updateChildValues(["someValue" : 123123])

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    @objc func handleLogout(){
        // press Login Button
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

