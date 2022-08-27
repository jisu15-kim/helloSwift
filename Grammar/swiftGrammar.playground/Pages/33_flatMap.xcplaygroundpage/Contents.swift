//: [Previous](@previous)

import Foundation

let myFriends = [
    ["철수"],
    ["영희"],
    ["제임스", "본드"],
    ["스티브", "잡스"],
    ["개발하는", "김지수"]
]
// 2차원 배열 - 배열 안에 배열


let flatMapped = myFriends.flatMap { (item : [String]) in
    return item
}

// flat 납짝하게, 1차원 배열로 만들어버리기

print(flatMapped)
