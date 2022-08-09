//: [Previous](@previous)

import Foundation
import Combine

var subscriptions = Set<AnyCancellable>()

// removeDuplicates
let words = "hey hey there! Mr Mr?"
    .components(separatedBy: " ")
    .publisher


words
    .removeDuplicates()
    .sink { value in
        print(value)
    }.store(in: &subscriptions)


// compactMap
let strings = ["a", "1.24", "3", "def", "45", "0.23"].publisher

strings
    .compactMap { Float($0)} // float으로 캐스팅할 경우, nil을 제외한 녀석들을 추출
    .sink { value in
        print(value)
    }.store(in: &subscriptions)

// ignoreOutput
let numbers = (1...10_000).publisher
numbers
    .ignoreOutput()
    .sink(receiveCompletion: { print("Completed with : \($0)")}, receiveValue: { print($0) })
    .store(in: &subscriptions)


// prefix

let tens = (1...10).publisher
tens
    .prefix(2)
    .sink(receiveCompletion: { print("Completed with : \($0)")}, receiveValue: { print($0) })
    .store(in: &subscriptions)



//: [Next](@next)
