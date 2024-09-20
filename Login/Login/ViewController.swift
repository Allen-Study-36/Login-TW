//
//  ViewController.swift
//  Login
//
//  Created by 김태완 on 9/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var emailView: UIView = {
        let emailView = UIView()
        emailView.backgroundColor = .darkGray
        return emailView
    }()
    
    private lazy var passwordView: UIView = {
        let passwordView = UIView()
        passwordView.backgroundColor = .darkGray
        return passwordView
    }()
    
    private lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.clipsToBounds = true
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        loginButton.setTitle("로그인", for: .normal)
        return loginButton
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [emailView, passwordView, loginButton])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 18
        return stackView
    }()
    
    private lazy var resetPasswordButton: UIButton = {
        let resetPasswordButton = UIButton()
        resetPasswordButton.setTitle("비밀번호 재설정", for: .normal)
        return resetPasswordButton
    }()
    
    private let textViewHeight: CGFloat = 48
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        view.addSubview(stackView)
        view.addSubview(resetPasswordButton)
        
        setUpAutoLayout()
    }
    
    func setUpAutoLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        resetPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30 ).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30 ).isActive = true
        
        resetPasswordButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10).isActive = true
        resetPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        resetPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        resetPasswordButton.heightAnchor.constraint(equalToConstant: textViewHeight).isActive = true
    }

}

extension ViewController: UITextFieldDelegate {
    
    
}
