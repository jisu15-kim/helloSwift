//
//  rpsManager.swift
//  RPSGame
//
//  Created by 김지수 on 2022/09/25.
//

import UIKit

struct RpsManager {
    
    private var comChoice: Rps = Rps(rawValue: Int.random(in: 1...3))!
    private var userChoice: Rps = Rps(rawValue: Int.random(in: 1...3))!
    
    private var comScore = 0
    private var userScore = 0
    
    mutating func getReady() {
        comScore = 0
        userScore = 0
        comChoice = Rps.rock
        userChoice = Rps.rock
    }
    
    func getUserRps() -> Rps {
        return userChoice
    }
    
    func getComRps() -> Rps {
        return comChoice
    }
    
    func getUserScore() -> Int {
        return userScore
    }
    
    func getComScore() -> Int {
        return comScore
    }
    
    mutating public func userGetSelected(name: String) {
        switch name {
        case "가위": // 가위 열거형을 만들어 저장
            userChoice = Rps.scissors
        case "바위":
            userChoice = Rps.rock
        case "보":
            userChoice = Rps.paper
        default:
            userChoice = Rps.ready
        }
    }
    
    mutating func getRpsResult() -> String {
        comChoice = Rps(rawValue: Int.random(in: 1...3))!
        
        if comChoice == userChoice {
            return "비겼습니다 !"
        } else if comChoice == .rock && userChoice == .paper {
            scoreUp(winner: "user")
            return "이겼습니다 !"
        } else if comChoice == .paper && userChoice == .scissors {
            scoreUp(winner: "user")
            return "이겼습니다 !"
        } else if comChoice == .scissors && userChoice == .rock {
            scoreUp(winner: "user")
            return "이겼습니다 !"
        } else if comChoice == .rock && userChoice == .scissors {
            scoreUp(winner: "computer")
            return "졌습니다ㅜ"
        } else if comChoice == .paper && userChoice == .rock {
            scoreUp(winner: "computer")
            return "졌습니다ㅜ"
        } else if comChoice == .scissors && userChoice == .paper {
            scoreUp(winner: "computer")
            return "졌습니다ㅜ"
        } else {
            return ""
        }
    }
    
    mutating private func scoreUp(winner: String) {
        if winner == "computer" {
            comScore = comScore + 1
        } else if winner == "user" {
            userScore = userScore + 1
        } else {
            return
        }
    }
}
