//: [Previous](@previous)

import Foundation

struct MyPet {
    var title = "타이틀없음" // public 이 생략되어 있음
    private(set) var name = "이름없음"
    
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title
myPet.title = "김지수 타이틀"
myPet.title
// myPet.name = "김지수 이름" // struct 안의 name을 직접적으로 변경할 수는 없음
myPet.setName(to: "김지수 이름")
myPet.name
