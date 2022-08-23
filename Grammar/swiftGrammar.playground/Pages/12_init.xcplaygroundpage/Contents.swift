//: [Previous](@previous)

import Foundation

class myFriend {
    var name : String
    
    init(_ name: String = "noName") {
        self.name = name
        print("메모리에 올라감")
    }
    deinit {
        print("메모리에서 사라짐")
        // 검증을 위해 작성
    }
    
}

let friend00 = myFriend("김지수")
let friend01 = myFriend()

let anObjectMemoryAddress = Unmanaged.passUnretained(friend00).toOpaque()
let secondMemorryAddress = Unmanaged.passUnretained(friend01).toOpaque()
