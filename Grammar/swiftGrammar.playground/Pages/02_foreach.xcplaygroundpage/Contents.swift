//: [Previous](@previous)

import Foundation

// 배열
// 배열은 콜렉션 안에 들어가 있음
// 콜렉션 : 데이터를 모아둔 것
// 콜렉션 1 : 배열, 셋, 딕셔너리

var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// foreach : 데이터 만큼 반복을 돌리는 것
// 가지고 있는 요소의 수 만큼 반복을 돌림
// where - 조건

for item in myArray {
    print("item : \(item)")
}

for item in myArray where item > 5 {
    print("5보다 큰 수 : \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수 : \(item)")
}
