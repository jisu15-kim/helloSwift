//: [Previous](@previous)

import Foundation

struct Pet {
    init() {
        print("Pet 이 생성되었음")
    }
}

struct Friend {
    var name : String
    
    // lazy 는 바로 메모리오 올리지 않고, 사용할 때 올림
    lazy var pet : Pet = Pet()
    
    init(_ name : String) {
        self.name = name
        print("Friend 가 생성됨")
    }
}
var myFriend = Friend("김지수")

myFriend.pet
