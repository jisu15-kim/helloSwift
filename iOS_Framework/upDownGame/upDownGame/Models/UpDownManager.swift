//
//  UpDownManager.swift
//  upDownGame
//
//  Created by 김지수 on 2022/09/25.
//

import UIKit

struct UpDownManager {
    var comNumber = Int.random(in: 1...10) // 컴퓨터가 랜덤으로 숫자 선택
    var myNumber : Int = 0
    
    
    mutating func setUserNumber(num: Int) {
        myNumber = num
    }
    
    mutating func getResult() -> String {
        if myNumber == 0 {
            return "숫자를 선택하세요🚨"
        } else if comNumber > myNumber {
            return "Up"
        } else if comNumber < myNumber {
            return "Down"
        } else if comNumber == myNumber {
            return "Bingo 🙌🔥"
        } else {
            return ""
        }
    }
    
    mutating func setUp() {
        comNumber = Int.random(in: 1...10)
        myNumber = 0
    }
    
}
