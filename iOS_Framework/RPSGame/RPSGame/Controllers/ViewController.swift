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
    
    var rpsManager = RpsManager()
    
    var userChoice: Rps = Rps.rock
    var computerChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var computerScoreText = 0
    var userScoreText = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rpsTapped(_ sender: UIButton) {
        let title = sender.currentTitle!
        rpsManager.userGetSelected(name: title)
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        rpsManager.getReady()
        view()
        mainLabel.text = "선택하세요 !"
    }
    
    @IBAction func selectTapped(_ sender: UIButton) {
        mainLabel.text = rpsManager.getRpsResult()
        view()
    }
    
    func view() {
        computerImage.image = rpsManager.getComRps().rpsInfo.image
        userImage.image = rpsManager.getUserRps().rpsInfo.image
        
        computerLabel.text = rpsManager.getComRps().rpsInfo.name
        userLabel.text = rpsManager.getUserRps().rpsInfo.name
        
        computerScoreText = rpsManager.getComScore()
        userScoreText = rpsManager.getUserScore()
        
        computerScore.text = "\(computerScoreText)"
        userScore.text = "\(userScoreText)"
    }
    
    
}

