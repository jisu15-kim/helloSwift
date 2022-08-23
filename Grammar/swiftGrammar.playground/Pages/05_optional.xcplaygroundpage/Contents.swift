//: [Previous](@previous)

import Foundation

// 옵셔널이란?
// 값이 있는지 없는지 모른다

var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable = \(someVariable)")

// 언래핑이란?
// 랩 즉, 감싸져 있는 것을 벗기는 것

if let otherVariable = someVariable {
    print("언래핑 되었다, 즉 값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

var firstValue : Int? = 30
var SecondValue : Int? = 50

print(firstValue, SecondValue)

unwrap(firstValue)
unwrap(SecondValue)

// someVariable 이 비어있드면, 즉 값이 없으면 기본값으로 요놈을 넣겠다.
let myValus = someVariable ?? 10
print("myValue: \(myValus)")

func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    // 즉, 값이 없으면 지나간다
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam = \(unWrappedParam)")
}

