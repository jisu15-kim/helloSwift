//: [Previous](@previous)

import Foundation

var myArray = ["one", "2", "three", "4"]

let intArray = myArray.map { item in
    return Int(item)
}

print(intArray)

let onlyIntArray = myArray.compactMap { item in
    return Int(item)
}

print(onlyIntArray)
