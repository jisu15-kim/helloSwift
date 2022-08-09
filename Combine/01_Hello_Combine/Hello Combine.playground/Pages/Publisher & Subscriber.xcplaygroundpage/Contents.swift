//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber
let just = Just(1000)
let jason = 50
let daily = Int.random(in: 5...30)
let subsciption1 = just.sink { value in
    print("Received Value: \(value)")
}

let arrayPublisher = [1, 3, 5, 7, 9].publisher
let subcription2 = arrayPublisher.sink { value in
    print("Recieved Value = \(value)")
}

class MyClass {
    var property: Int = 0 {
        didSet {
            print("Did set property to \(property)")
            print(daily)
        }
    }
}

let object = MyClass()
let subscription3 = arrayPublisher.assign(to: \.property, on: object)

print("Final Value : \(object.property)")

// object.property = 3








//: [Next](@next)


