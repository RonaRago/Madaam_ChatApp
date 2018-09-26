//
//  ViewController.swift
//  Madaam_ChatApp
//
//  Created by Rona Rago on 26/09/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    @objc func handleLogout(){
        
    }
}

