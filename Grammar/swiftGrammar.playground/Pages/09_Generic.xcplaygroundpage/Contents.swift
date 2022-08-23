//: [Previous](@previous)

import Foundation

// Generic 어떤 자료형이든 받을 수 있다

struct myArray<T> {
    var elements : [T] = [T]()
    
    init(_ elements: [T]) {
        self.elements = elements
    }
}

struct friend {
    var name : String
}

struct devKim {
    var name : String
}

var mySomeArray = myArray([1, 2, 3])
print("mySomeArray : \(mySomeArray)")

var myStringArray = myArray(["가", "나", "다", "라"])

let friend_01 = friend(name: "철수")
let friend_02 = friend(name: "영희")
let friend_03 = friend(name: "맹구")
var myFriendsArray = myArray([friend_01.name, friend_02.name, friend_03.name])
print("myFriendsArray : \(myFriendsArray)")
