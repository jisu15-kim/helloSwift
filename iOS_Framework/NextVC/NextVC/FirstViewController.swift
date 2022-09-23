//
//  FirstViewController.swift
//  NextVC
//
//  Created by 김지수 on 2022/09/24.
//

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    let backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var someString: String? // 초기값 nil 로 설정
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }
    
    func setUp() {
        mainLabel.text = someString
        mainLabel.font = UIFont.boldSystemFont(ofSize: 22)
        view.backgroundColor = .gray
        
        view.addSubview(mainLabel)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(backButton)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
    }
    
    @objc func backButtonTapped() {
        print("백 버튼 눌림")
        dismiss(animated: true)
    }
}
