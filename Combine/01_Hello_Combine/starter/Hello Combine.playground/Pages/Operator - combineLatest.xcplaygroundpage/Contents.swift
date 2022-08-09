//: [Previous](@previous)

import Foundation
import Combine


// Basic CombineLatest
let strPublisher = PassthroughSubject<String, Never>()
let numPublisher = PassthroughSubject<Int, Never>()

strPublisher.combineLatest(numPublisher).sink { (str, num) in
    print("Recieve: \(str), \(num)")
}

strPublisher.send("A")
strPublisher.send("B")
strPublisher.send("C")

numPublisher.send(1)
numPublisher.send(2)
numPublisher.send(3)

// Advanced CombineLatest
let usernamePublisher = PassthroughSubject<String, Never>()
let passwordPublisher = PassthroughSubject<String, Never>()
let vaildatedCrendetialsSubscription = usernamePublisher.combineLatest(passwordPublisher)
    .map { (username, password) -> Bool in
        return !username.isEmpty && !password.isEmpty && password.count > 12
    }
    .sink { valid in
        print("Credential valid? : \(valid)")
    }

usernamePublisher.send("jasonlee")
passwordPublisher.send("weakpw")
passwordPublisher.send("VeryStrongPassword")


// Merge

let publisher1 = [1, 2, 3, 4, 5].publisher
let publisher2 = [300, 400, 500].publisher

// Merge는 Output Type이 같아야 함

let mergedPublisher = publisher1.merge(with: publisher2)
    .sink { value in
        print("Merge: subcription received value : \(value)")
    }



//: [Next](@next)
