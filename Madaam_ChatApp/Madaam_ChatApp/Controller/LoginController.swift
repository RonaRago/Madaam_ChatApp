//
//  LoginController.swift
//  Madaam_ChatApp
//
//  Created by Rona Rago on 26/09/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //Background Color
    view.backgroundColor = UIColor(r: 61, g: 91, b: 155)
        
    //container for  Register Fields
    let inputsContainerView = UIView()
        inputsContainerView.backgroundColor = UIColor.white
        inputsContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputsContainerView)
        
    //Contraints x, y ,with, height contraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    //Status Bar Style
    func preferredStatusBarStyle() -> UIStatusBarStyle {
    return .lightContent
    }
}

    //Extension for RGB Colors
    extension UIColor{
        convenience init(r: CGFloat, g: CGFloat, b: CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
        }
    }
