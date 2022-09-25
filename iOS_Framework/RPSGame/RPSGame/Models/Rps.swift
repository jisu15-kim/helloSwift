//
//  Rps.swift
//  RPSGame
//
//  Created by 김지수 on 2022/09/17.
//

import Foundation
import UIKit

// 원시값(raw value)
enum Rps: Int {
    case ready
    case rock
    case paper
    case scissors
    
    // 계산 속성
    var rpsInfo: (image: UIImage, name: String) {
        switch self {
        case .ready:
            return (#imageLiteral(resourceName: "ready"), "준비")
        case .rock:
            return (#imageLiteral(resourceName: "rock"), "바위")
        case .paper:
            return (#imageLiteral(resourceName: "paper"), "보")
        case .scissors:
            return (#imageLiteral(resourceName: "scissors"), "가위")
        }
    }
}

// 열거형 같은 경우는 따로 파일을 만들어서 관리
