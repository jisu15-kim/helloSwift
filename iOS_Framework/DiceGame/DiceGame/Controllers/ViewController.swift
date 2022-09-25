//
//  ViewController.swift
//  DiceGame
//
//  Created by 김지수 on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {
    
    var diceManager = DiceManager()

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = diceManager.getFirstDice()
        secondImageView.image = diceManager.getFirstDice()
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // 첫번째 뷰의 이미지를 랜덤으로 변경
        firstImageView.image = diceManager.getRandomDice()
        // 두번째 뷰의 이미지를 랜덤으로 변경
        secondImageView.image = diceManager.getRandomDice()
    }
    

}

