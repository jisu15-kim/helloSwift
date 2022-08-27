//: [Previous](@previous)

import Foundation

var myArray = [3, 4, 66, 55, 25, 52, 30, 50, 23, 58, 28, 48]

var ascendingArray = myArray.sorted() // 오름차순이 기본 (낮은 -> 높은) 배열을
var descendingArray = myArray.sorted(by: >) // 내림차순

// sorted : 반환하는 것
// sort : 내 어레이를 변경

myArray.sort()
myArray.sort(by: >)
