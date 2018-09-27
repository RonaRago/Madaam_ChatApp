//
//  LoginController.swift
//  Madaam_ChatApp
//
//  Created by Rona Rago on 26/09/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit
import Firebase

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
    lazy var LoginRegisterButton: UIButton = {
    let button = UIButton (type: .system)
    button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
    button.setTitle("Register", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitleColor(UIColor.white, for: .normal)
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)

    return button
    }()
    
    @objc func handleRegister(){
        guard let email = emailTextField.text, let password = passwordTextField.text else {
        print("Invalid Input!")
        return
        }
        
        Auth.auth().createUser(withEmail: email, password: password, completion:
        { user ,error in
        if let firebaseError = error
        {print(firebaseError.localizedDescription)
        return
        }
        print("Success!")
        })
    }

    //Name Textfield
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    //Name Separator
    let nameSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let nameSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let emailSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "oalogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()

    //Background Color
    view.backgroundColor = UIColor(r: 61, g: 91, b: 155)
    
    //views
    view.addSubview(inputsContainerView)
    view.addSubview(LoginRegisterButton)
    view.addSubview(profileImageView)
   
    
    //calls functions
    setupInputsContainerView()
    setupLoginRegisterButton()
    setupProfileImageView()
    }
    
    func setupProfileImageView() {
        //need x, y, width, height constraints
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -12).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    
    func setupInputsContainerView(){
        //Contraints x, y ,with, height contraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputsContainerView.addSubview(nameTextField)
        inputsContainerView.addSubview(nameSeparatorView)
        inputsContainerView.addSubview(emailTextField)
        inputsContainerView.addSubview(emailSeparatorView)
        inputsContainerView.addSubview(passwordTextField)
        
        //Contraints x, y ,with, height contraints
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        //need x, y, width, height constraints
        nameSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //need x, y, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        //need x, y, width, height constraints
        emailSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //need x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive = true
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
