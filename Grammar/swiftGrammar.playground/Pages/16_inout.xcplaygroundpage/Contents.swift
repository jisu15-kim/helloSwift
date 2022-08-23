//: [Previous](@previous)

import Foundation



func sayName(_ name: String) {
    print("안녕, 난 \(name) 이야")
}

func sayHi(_ name: inout String) {
    name = "개발하는 + " + name
    print("안녕, 난 \(name) 이야")
}


sayName("김지수")

var name = "김지수"

sayHi(&name)
