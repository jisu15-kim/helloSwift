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
    
    var manager = UpDownManager()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 버튼의 숫자를 가져와
        guard let numString = sender.currentTitle else { return }
        numberLabel.text = numString
        guard let num = Int(numString) else { return }
        manager.setUserNumber(num: num)
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 컴퓨터의 숫자와 낸가 선택한 숫자를 비교해서 Up인지, Down인지 Bingo인지 표시
        mainLabel.text = manager.getResult()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        reset()
    }
    
    func reset() {
        manager.setUp()
        mainLabel.text = "선택하세요 !"
        numberLabel.text = ""
    }
    
}

