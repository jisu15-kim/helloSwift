//: [Previous](@previous)

import Foundation

enum missMatchError : Error {
    case nameMissmatch
    case numberMissmatch
}

// 에러를 던지는 메소드
func guessMyName(name input: String) throws {
    print("guessMyName() Called")
    if input != "김지수" {
        print("틀렸다")
        throw missMatchError.nameMissmatch
        // return
    }
    print("맞췄다")
}



func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyName() Called")
    if input != 10 {
        print("틀렸다")
        throw missMatchError.numberMissmatch
//         return
    }
    print("맞췄다")
    return true
}

// 에러가 있어도 잡지 않겠어
//try? guessMyName(name: "김지수r")

// 에러가 무조건 없을거야 !
//try! guessMyName(name: "김지수r")


// 에러가 있으면 catch로 잡겠어
//do {
//    try guessMyName(name: "김지숭")
//} catch {
//    print("잡은 에러: \(error)")
//}

do {
    let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}
