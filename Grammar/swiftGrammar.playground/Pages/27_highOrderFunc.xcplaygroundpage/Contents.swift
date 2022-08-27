//: [Previous](@previous)

import Foundation

func getName(_ name : String) -> String {
    return "내 이름은 \(name)"
}

//var getNameClosure : (String) -> String

func sayHello( getNameB: (String) -> String, name: String) -> String {
    return getName(name)
}

let resultOne = sayHello(getNameB: getName(_:), name: "김지수")
