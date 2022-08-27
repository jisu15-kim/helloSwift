//: [Previous](@previous)

import Foundation

class Friend {
    func sayHi() {
        print("안녕")
    }
    class func sayBye() {
        print("바이바이")
    }
    static func sayhoho() {
        print("호호호")
    }
}
// 메모리에 올리지 않고도 사용할 수 있음

class BestFriend : Friend {
    class override func sayBye() {
        super.sayBye()
        print("덮어썻음! 세이 바이")
    }
    func sayhoho() {
        print("덮어썻음! 세이 호호")
    }
}

let myFriend = Friend()
myFriend.sayHi()

Friend.sayBye()

BestFriend.sayBye()
BestFriend.sayhoho()

// 유틸 클래스 만드는 경우
// helper 메소드를 모아둔 곳
class Utils {
    static func sayHello() -> String {
        return "안녕하세요"
    }
    class func sayBye() -> String {
        return "잘가요"
    }
}

Utils.sayHello()
