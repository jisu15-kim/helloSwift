//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {
    
    // var storyboard: UIstoryBoard?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        firstVC.someString = "전달할 데이터"
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
        
        
    }
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {

        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        secondVC.someString = sender.currentTitle
        present(secondVC, animated: true, completion: nil)
        
        
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toThirdVC", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toThirdVC" {
            
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.someString = "홀롤로"
            // 데이터 전달
            
        }
        
        if segue.identifier == "toFourthVC" {
            
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "우우우우우"
            // 데이터 전달
            
        }
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if true {
            return false
        } else {
            return true
        }
    }
    

    
}

