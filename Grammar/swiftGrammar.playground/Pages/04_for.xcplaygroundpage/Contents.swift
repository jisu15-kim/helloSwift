//: [Previous](@previous)

import Foundation

// Range (범위)
// 0...5
// 0, 1, 2, 3, 4, 5 (6자리)

// 0..<5
// 0, 1, 2, 3, 4

for index in 0...5 {
    print("호호 index: \(index)")
}

for index in 0..<5 {
    print("호호 index: \(index)")
}

for index in 0..<5 where index % 2 == 0 {
    print("호호 짝수 index : \(index)")
}

var randomInt: [Int] = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInt.append(randomNumber)
}

print("randomInts:\(randomInt)")
