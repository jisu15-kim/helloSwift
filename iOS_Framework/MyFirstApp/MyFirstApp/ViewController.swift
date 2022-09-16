//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 김지수 on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.backgroundColor = UIColor.darkGray
        buttonLabel.layer.cornerRadius = 10
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        textLabel.text = "안녕하세요 !"
        textLabel.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        textLabel.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        textLabel.textAlignment = NSTextAlignment.right
        
        buttonLabel.setTitleColor(.black, for: .normal)
        
        
        
    }
    
}

