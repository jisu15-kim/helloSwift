//: [Previous](@previous)

import Foundation

// 키 : 값
// 특정한 키로 값을 가져올 수 있는 구조

var myFriends = ["bestFriend" : "김지수",
                 "highSchool" : "영희"
                ]

let myBestFriend = myFriends["bestFriend"]

let highSchoolFriend = myFriends["highSchool"]

let youtubeFriend = myFriends["youtube" , default: "없어"]

myFriends["bestFriend"] = "개발하는 김지수"

let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "철수"

let newFriend = myFriends["newFriend"]

myFriends.updateValue("수잔", forKey: "girlFriend")

let girlFriend = myFriends["girlFriend"]

myFriends.updateValue("영수", forKey: "bestFriend")

let myBestfriend2 = myFriends["bestFriend"]

let emptyDictionary00 : [String : Int] = [:]
let emptyDictionary01 = [String : Int]()
let emptyDictionary02 : [String : Int] = Dictionary<String, Int>()

myFriends.count

for item in myFriends {
    print("item : ", item)
}
