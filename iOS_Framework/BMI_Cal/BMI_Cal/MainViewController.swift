//
//  ViewController.swift
//  BMI_Cal
//
//  Created by 김지수 on 2022/09/25.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet weak var heightTextLabel: UITextField!
    @IBOutlet weak var weightTextLabel: UITextField!
    @IBOutlet weak var alertLabel: UILabel!
    var bmi: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }
    
    func setUp() {
        heightTextLabel.delegate = self
        weightTextLabel.delegate = self
        
        heightTextLabel.keyboardType = .default
        weightTextLabel.keyboardType = .default
        
        heightTextLabel.placeholder = "cm 단위로 입력해주세요"
        weightTextLabel.placeholder = "kg 단위로 입력해주세요"
        
        alertLabel.text = ""
    }
    
    @IBAction func resultButtonTapped(_ sender: UIButton) {
        let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as! ResultViewController
//        let weight = weightTextLabel.text
//        let height = heightTextLabel.text
//        resultVC.weight = Float(weight!)
//        resultVC.height = Float(height!)
        if heightTextLabel.text == "" || weightTextLabel.text == "" {
            alertLabel.text = "키와 몸무게를 모두 입력해주세요 !"
        } else {
            bmi = calculateBMI(height: heightTextLabel.text!, weight: weightTextLabel.text!)
            resultVC.bmi = bmi
            present(resultVC, animated: true, completion: nil)
        }
        
        alertLabel.text = ""
        heightTextLabel.text = ""
        weightTextLabel.text = ""
    }
    
    func calculateBMI(height: String, weight: String) -> Double {
        guard let h = Double(height), let w = Double(weight) else { return 0.0 }
        var bmi = w / (h * h) * 10000
        print("BMI 결과값(반올림 전) : \(bmi)")
        bmi = round(bmi * 10) / 10
        print("BMI 결과값(반올림 후): \(bmi)")
        return bmi
    }
}

extension MainViewController: UITextFieldDelegate {
    
    // 각 문자가 string 파라미터로 들어옴 , 숫자만 입력되도록 구현
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if Int(string) != nil || string == "" {    // 숫자이거나 빈 문자열 이라면 true
            alertLabel.text = ""
            return true
        }
        alertLabel.text = "숫자만 입력 가능합니다."
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if heightTextLabel.text != "", weightTextLabel.text != "" {
            weightTextLabel.resignFirstResponder()
            return true
            
        } else if heightTextLabel.text != "" {
            weightTextLabel.becomeFirstResponder()
            return true
        }
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextLabel.resignFirstResponder()
        weightTextLabel.resignFirstResponder()
        // user의 입력이 일어나면 text field 2개를 모두 내리겠다.
    }
}

