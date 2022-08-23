//: [Previous](@previous)

import Foundation


class Friend {
    var name : String
    
    init(_ name : String) {
        self.name = name
    }
    
    func sayHi() {
        print("안녕, 나는 \(self.name) 이야")
    }
}

class BestFriend : Friend {
    override init(_ name: String) {
        super.init("베프" + name)
        // super 로 부모의 메소드 사용
    }
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("김지수")

myFriend.sayHi()

let myBestFriend = BestFriend("영희")

myBestFriend.sayHi()

myBestFriend.name
