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
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    func setUp() {
        guard let bmi = bmi else { return }
        descriptionLabel.textColor = .white
        resultLabel.text = (String(bmi.value))
        descriptionLabel.text = bmi.advice
        descriptionLabel.backgroundColor = bmi.matchColor
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
