//
//  ViewController.swift
//  Finanzas
//
//  Created by Jyferson Colina on 8/03/22.
//

import UIKit

class SignInViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet weak var signInButtom: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var facebookButtom: UIButton!
    @IBOutlet weak var twitterButtom: UIButton!
    @IBOutlet weak var googleButtom: UIButton!
    @IBOutlet weak var forgotPaswordButtom: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateUI()
    }
    
    private func configurateUI() {
        signInButtom.layer.cornerRadius = 22
        facebookButtom.layer.cornerRadius = 10
        googleButtom.layer.cornerRadius = 10
        twitterButtom.layer.cornerRadius = 10
        
        signInButtom.layer.shadowColor = UIColor.gray.cgColor
        signInButtom.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)
        signInButtom.layer.shadowOpacity = 0.4
        
        googleButtom.layer.shadowOpacity = 0.4
        googleButtom.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)
        googleButtom.layer.shadowColor = UIColor.gray.cgColor
        
        facebookButtom.layer.shadowColor = UIColor.gray.cgColor
        facebookButtom.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)
        facebookButtom.layer.shadowOpacity = 0.4
        
        twitterButtom.layer.shadowColor = UIColor.gray.cgColor
        twitterButtom.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)
        twitterButtom.layer.shadowOpacity = 0.4
        
        emailTextField.layer.borderColor = UIColor.black.cgColor
        emailTextField.layer.borderWidth = 0.2
        
        passwordTextField.layer.borderWidth = 0.2
        passwordTextField.layer.borderColor = UIColor.black.cgColor
        
        
        
    }
}
