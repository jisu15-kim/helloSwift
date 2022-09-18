//
//  ViewController.swift
//  TextFieldProject
//
//  Created by 김지수 on 2022/09/18.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = UIColor.gray
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "이메일 입력"
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .go
        textField.becomeFirstResponder() // foucs를 잡아줌
        
    }
    
    // 화면의 탭을 감지하는 메소드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        textField.resignFirstResponder()
    }
    
    // 텍스트 필드의 입력을 시작할 때 호출 (시작 가능 여부의 허락)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 시작했다.")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (textField.text?.count)! + string.count > 10 {
            return false
        } else {
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        
        if textField.text == "" {
            textField.placeholder = "Type Something !"
            return false
        } else {
            return true
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 끝냈다.")
        textField.text = ""
    }

    @IBAction func doneButtonTapped(_ sender: UIButton) {
        textField.resignFirstResponder()
    }
    
}

