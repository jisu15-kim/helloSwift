//
//  main.swift
//  RandomBingo
//
//  Created by 김지수 on 2022/09/18.
//

// for문으로는 불가, while로 사용
// for문은 조건을 반복할 횟수가 정해져 있을 때 사용

import Foundation

var computerChoice = Int.random(in: 1...100)

while true {
    
    var myChoice = 0
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    
    print("my choice : \(myChoice)")
    
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo")
        break // 반복문을 종료
    }
}
