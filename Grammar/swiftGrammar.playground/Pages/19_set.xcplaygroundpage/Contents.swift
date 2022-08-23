//: [Previous](@previous)

import Foundation

// set은 안에 들어온 녀석들이 고유해야 함
// 배열이나 딕셔너리랑 비슷함

var myNumbeerSet : Set<Int> = Set<Int>()

myNumbeerSet.insert(1)
myNumbeerSet.insert(2)
myNumbeerSet.insert(2)
myNumbeerSet.insert(3)
myNumbeerSet.insert(4)
myNumbeerSet.insert(4)
// 같은 녀석들이 들어가면 안들어가짐
// 배열처럼 순서가 고정되어 있지 않음

myNumbeerSet.count
myNumbeerSet


for item in myNumbeerSet {
    print(item)
}

var myFriends : Set<String> = ["철수", "영희", "수지"]
var myBestFriends : [String] = ["철수", "영희", "수지"]

myFriends.contains("철수")
myBestFriends.contains("철수")

if let indexToRemove = myFriends.firstIndex(of: "수지") {
    print("indexToRemove: ", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("수지") {
    print("내 친구 중 수지는 없다")
}
