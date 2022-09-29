//
//  AddViewController.swift
//  TableViewChat
//
//  Created by 김지수 on 2022/09/29.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var dataManager = DataManager()
    let mainVC = ViewController()
    var newData: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "추가하기"
        
        setupTextField()
     
    }
    
    func setupTextField() {
        titleTextField.delegate = self
        descriptionTextField.delegate = self
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let inputTitle = titleTextField.text else { return }
        guard let inputDescription = descriptionTextField.text else { return }
        dataManager.addMovieData(name: inputTitle, description: inputDescription) // DataManager의 addMovieData 함수 호출
        // dataManager.updateMovieData()
        navigationController?.popViewController(animated: true)
    }
}

extension AddViewController: UITextFieldDelegate {
    
}
