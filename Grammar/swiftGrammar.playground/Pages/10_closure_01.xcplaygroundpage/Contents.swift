//: [Previous](@previous)

import Foundation

// String을 반환하는 클로저

let myName : String = {
    // myName으로 들어간다
    return "김지수"
}()

print(myName)


//클로저 정의
let myRealName = { (name: String) -> String in
    return "리얼네임 : \(name)"
}

myRealName("기기김지수")

let myRealNameLogic : (String) -> Void = { (name: String) in
    print("공부중인 \(name)")
}

myRealNameLogic("김지수")

// 응용 ?
let myInt = { (value: Int) -> Int in
    let result = value * 5
    return result
}

print(myInt(5))
