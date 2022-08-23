//: [Previous](@previous)

import Foundation

// 약속, 우리 이렇게 하자
// 프로토콜은 **able **ing
// 프로토콜로 약속을 하는 것임

protocol Naming {
    // 우리는 이런 변수를 가지고 있을 것입니다. 약속
    var name : String { get set }
    func getName() -> String
}

// 프로토콜을 준수한다
struct friend : Naming {
    var name: String
    
    func getName() -> String {
        return "내 친구 \(self.name)"
    }
}

var myFriend = friend(name: "김지수")

myFriend.getName()
