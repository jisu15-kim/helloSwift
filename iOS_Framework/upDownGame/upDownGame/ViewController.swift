//
//  ViewController.swift
//  upDownGame
//
//  Created by 김지수 on 2022/09/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var comNumber = Int.random(in: 1...10) // 컴퓨터가 랜덤으로 숫자 선택
    var myNumber : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 버튼의 숫자를 가져와
        guard let numString = sender.currentTitle else { return }
        
        // numberLabel 이 누른 숫자에 따라 변하도록
        numberLabel.text = numString
        
        // 선택한 숫자를 변수에 저장 (String을 Int로 변환한 후 저장)
        guard let num = Int(numString) else { return }
        myNumber = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 컴퓨터의 숫자와 낸가 선택한 숫자를 비교해서 Up인지, Down인지 Bingo인지 표시
        if myNumber == 0 {
            mainLabel.text = "숫자를 선택하세요🚨"
        } else if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else if comNumber == myNumber {
            mainLabel.text = "Bingo 🙌🔥 "
        } else {
            return
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        reset()
    }
    
    func reset() {
        // mainLabel에 선택하세요 라고 표시
        mainLabel.text = "선택하세요 !"
        // numberLabel은 비어있어
        numberLabel.text = ""
        comNumber = Int.random(in: 1...10)
        myNumber = 0
    }
    
}

