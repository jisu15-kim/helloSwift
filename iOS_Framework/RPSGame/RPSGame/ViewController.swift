//
//  ViewController.swift
//  RPSGame
//
//  Created by 김지수 on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var computerScore: UILabel!
    @IBOutlet weak var userScore: UILabel!
    
    var userChoice: Rps = Rps.rock
    var computerChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var computerScoreText = 0
    var userScoreText = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    @IBAction func rpsTapped(_ sender: UIButton) {
        let title = sender.currentTitle!
        print(title)
        // 버튼의 문자를 가져온 것
        
        switch title {
        case "가위": // 가위 열거형을 만들어 저장
            userChoice = Rps.scissors
        case "바위":
            userChoice = Rps.rock
        case "보":
            userChoice = Rps.paper
        default:
            break
        }
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        reset()
    }
    
    @IBAction func selectTapped(_ sender: UIButton) {
        switch computerChoice {
        case Rps.rock:
            computerImage.image = UIImage(named: "rock")
            computerLabel.text = "바위"
        case Rps.paper:
            computerImage.image = UIImage(named: "paper")
            computerLabel.text = "보"
        case Rps.scissors:
            computerImage.image = UIImage(named: "scissors")
            computerLabel.text = "가위"
        }
        
        switch userChoice {
        case Rps.rock:
            userImage.image = UIImage(named: "rock")
            userLabel.text = "바위"
        case Rps.paper:
            userImage.image = UIImage(named: "paper")
            userLabel.text = "보"
        case Rps.scissors:
            userImage.image = UIImage(named: "scissors")
            userLabel.text = "가위"
        }
        
        if computerChoice == userChoice {
            mainLabel.text = "비겼습니다 !"
        } else if computerChoice == .rock && userChoice == .paper {
            mainLabel.text = "이겼습니다 !"
            scoreUp(winner: "user")
        } else if computerChoice == .paper && userChoice == .scissors {
            mainLabel.text = "이겼습니다 !"
            scoreUp(winner: "user")
        } else if computerChoice == .scissors && userChoice == .rock {
            mainLabel.text = "이겼습니다 !"
            scoreUp(winner: "user")
        } else if computerChoice == .rock && userChoice == .scissors {
            mainLabel.text = "졌습니다 ㅜ"
            scoreUp(winner: "computer")
        } else if computerChoice == .paper && userChoice == .rock {
            mainLabel.text = "졌습니다 ㅜ"
            scoreUp(winner: "computer")
        } else if computerChoice == .scissors && userChoice == .paper {
            mainLabel.text = "졌습니다 ㅜ"
            scoreUp(winner: "computer")
        }
    }
    // 리셋
    func reset() {
        userImage.image = UIImage(named: "ready")!
        computerImage.image = UIImage(named: "ready")!
        mainLabel.text = "선택하세요 !"
        computerLabel.text = "준비"
        userLabel.text = "준비"
        computerScoreText = 0
        computerScore.text = "\(computerScoreText)"
        userScoreText = 0
        userScore.text = "\(userScoreText)"
    }
    
    func scoreUp(winner: String) {
        if winner == "computer" {
            computerScoreText += 1
            computerScore.text = "\(computerScoreText)"
        } else if winner == "user" {
            userScoreText += 1
            userScore.text = "\(userScoreText)"
        } else {
            return
        }
    }
}
