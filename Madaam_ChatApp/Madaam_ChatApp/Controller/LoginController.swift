//
//  LoginController.swift
//  Madaam_ChatApp
//
//  Created by Rona Rago on 26/09/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // Fields Contrainer
    let inputsContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.white
    view.translatesAutoresizingMaskIntoConstraints = false
    view.layer.cornerRadius = 5
    view.layer.masksToBounds = true
    return view
    }()
    
    // Register Button
    let LoginRegisterButton: UIButton = {
    let button = UIButton (type: .system)
    button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
    button.setTitle("Register", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitleColor(UIColor.white, for: .normal)
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    return button
    }()
    
    override func viewDidLoad() {
    super.viewDidLoad()

    //Background Color
    view.backgroundColor = UIColor(r: 61, g: 91, b: 155)
    
    //views
    view.addSubview(inputsContainerView)
    view.addSubview(LoginRegisterButton)
    
    //calls functions
    setupInputsContainerView()
    setupLoginRegisterButton()
    }
    
    func setupInputsContainerView(){
        //Contraints x, y ,with, height contraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setupLoginRegisterButton(){
        //Contraints x, y ,with, height contraints
        LoginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        LoginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        LoginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, constant: 12).isActive = true
        LoginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
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
