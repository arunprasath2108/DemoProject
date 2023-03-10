//
//  SplashViewController.swift
//  DemoProject
//
//  Created by arun-pt6232 on 09/03/23.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        configureLogoView()
    }
    
    
    //need to configure a Logo here, and waits for sometime to display
    func configureLogoView() {
        view.backgroundColor = .systemGreen
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //checks user logged in or not
        let login = false
        
        if login {
            //present HomePage VC
        }
        else {
            let loginVC = LoginViewController()
            
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true)
        }
    }

}
