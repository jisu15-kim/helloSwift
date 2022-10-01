//
//  DetailViewController.swift
//  MemberList
//
//  Created by 김지수 on 2022/09/30.
//

import UIKit
import PhotosUI

final class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    
    var member: Member?
    
    weak var delegate: MemberDelegate?
    
    override func loadView() {
        view = detailView
        // view.backgroundColor = .white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonAction()
        setupData()
        setupTapGestures()
    }
    
    // DetailVC의 멤버정보를 DetailView로 전달하는 함수
    func setupData() {
        detailView.member = member
    }
    
    func setupButtonAction() {
        detailView.saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    func setupImagePicker() {
        // 기본설정 세팅
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 0
        configuration.filter = .any(of: [.images, .videos])
        
        // PickerView 생성
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
        
    func setupTapGestures() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchUpImageView))
        detailView.mainImageView.addGestureRecognizer(tapGesture)
        detailView.mainImageView.isUserInteractionEnabled = true
    }
    
    @objc func touchUpImageView() {
        setupImagePicker()
    }

    
    @objc func saveButtonTapped() {
        print("버튼이 눌림")
        
        if member == nil {
            // 입력이 안되어 있다면, 일반적으로 빈 문자열로 저장
            let name = detailView.nameTextField.text ?? ""
            let address = detailView.addressTextField.text ?? ""
            let phone = detailView.phoneNumberTextField.text ?? ""
            let age = Int(detailView.ageTextField.text ?? "")
            // 새 멤버 생성
            var newMember = Member(name: name, age: age, phone: phone, address: address)
            newMember.memberImage = detailView.mainImageView.image
            delegate?.addNewMember(newMember)
            
        } else {
            member!.memberImage = detailView.mainImageView.image
            
            let memberId = Int(detailView.memberIdTextField.text!) ?? 0
            member!.name = detailView.nameTextField.text
            member!.address = detailView.addressTextField.text
            member!.phone = detailView.phoneNumberTextField.text
            member!.age = Int(detailView.ageTextField.text!)
            
            // ViewController 로 member 전달 #Delegate가 아닌 방식
//            let index = navigationController!.viewControllers.count - 2
//            let vc = navigationController!.viewControllers[index] as! ViewController
//            vc.memberListManager.updateMemberInfo(index: memberId, member!)
            
            // 커스텀 Delegate 방식으로 업데이트 정보 전달
            delegate?.update(index: memberId, member!)
        }
        navigationController?.popViewController(animated: true)
    }
}

extension DetailViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        let itemProvider = results.first?.itemProvider
        if let itemProvider = itemProvider, itemProvider.canLoadObject(ofClass: UIImage.self) {
            itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
                DispatchQueue.main.async {
                    self.detailView.mainImageView.image = image as? UIImage
                }
            }
        } else {
            print("이미지를 못 불러왔어요")
        }
    }
}
