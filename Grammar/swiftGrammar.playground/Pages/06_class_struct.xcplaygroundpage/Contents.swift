//: [Previous](@previous)

import Foundation

// 변수와 상수
// 변수 : 값을 유동적으로 변하게 할 수 있음
// 상수 : 자물쇠를 채운다 !

// 유튜버(데이터) 모델 - struct / 구조체
struct youtuberStruct {
    var name : String
    var subscribersCount : Int
}

var devKim = youtuberStruct(name: "Awsound", subscribersCount: 99)
var devKimClone = devKim
print("=================Struct==================")
print("===============복사(Copy)=================")

print("값 넣기 전 devKimClone.name : \(devKimClone.name)")
devKimClone.name = "Awsound Good"
print("값 넣은 후 devKimClone.name : \(devKimClone.name)")
print("값 넣은 후 devKim.name : \(devKim.name)")

// 값 복사이기 때문에 둘의 값이 다름


// --------------------------------------------------------
// 클래스
class youtuberClass {
    var name : String
    var subscribersCount : Int
    
    // init으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있다
    // 생성자 - 즉 메모리에 올린다, 메모리에 올리려면 값이 필요함
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var jisuKim = youtuberClass(name: "Awsound", subscribersCount: 30)
var jisuKimClone = jisuKim
print("=================Class==================")
print("===============참조(Reference)===========")
// 내가 수정한것과 다른 사람들이 보는 것과 연동이 됨, -> 같은 메모리를 바라보고 있기 때문

print("값 넣기 전 jisuKimClone : \(jisuKimClone.name)")
jisuKimClone.name = "김지수 값 넣기"
print("값 넣은 후 jisuKimClone : \(jisuKimClone.name)")
print("값 넣은 후 jisuKim : \(jisuKim.name)")
