//
//  ResultViewController.swift
//  BMI_Cal
//
//  Created by 김지수 on 2022/09/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var bmi: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()

    }
    
    func setUp() {
        guard let result = bmi else { return }
        descriptionLabel.textColor = .white
        backgroundColorChange()
        resultLabel.text = (String(result))
    }
    
    func backgroundColorChange() {
        guard let bmi = bmi else { return }
        if bmi < 18.5 {
            descriptionLabel.text = "저체중입니다 !"
            descriptionLabel.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }
        else if bmi < 22.9 {
            descriptionLabel.text = "정상체중입니다 !"
            descriptionLabel.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        else if bmi < 24.9 {
            descriptionLabel.text = "과체중입니다 !"
            descriptionLabel.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else {
            descriptionLabel.text = "고도비만입니다.."
            descriptionLabel.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
