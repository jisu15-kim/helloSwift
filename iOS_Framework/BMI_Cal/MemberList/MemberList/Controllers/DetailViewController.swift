//
//  DetailViewController.swift
//  MemberList
//
//  Created by 김지수 on 2022/09/30.
//

import UIKit

final class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    
    var member: Member?
    
    override func loadView() {
        view = detailView
        view.backgroundColor = .white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonAction()
    }
    
    func setupButtonAction() {
        detailView.saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    @objc func saveButtonTapped() {
        print("버튼이 눌림")
    }
}
