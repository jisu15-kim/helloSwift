//: [Previous](@previous)

import Foundation

// class 앞에 final을 붙이면 상속이 안됨

class Friend {
    var name : String
    
    init(name : String){
        self.name = name
    }
}

class BestFriend : Friend {
    
    override init(name : String){
        super .init(name: "베프" + name)
    }
}

let myFriend = Friend(name: "김지수")
let myBestFriend = BestFriend(name: "철수")
