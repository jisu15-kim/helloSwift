//: [Previous](@previous)

import Foundation

class Friend {
    var name : String
    
    func changeName(newName : String) {
        self.name = "호롤롤로! " + self.name
    }
    
    init(_ name: String) {
        self.name = name
    }
}

var myFriend = Friend("김지수")
myFriend.changeName(newName: "개발하는 김지수")
myFriend.name


struct bestFriend {
    var name : String
    
    mutating func changeName(newName : String) {
        self.name = "호롤롤로! " + self.name
//        print("newName", newName)
    }
}

var myBestFriend = bestFriend(name: "김지수")
myBestFriend.changeName(newName: "궁중수")


