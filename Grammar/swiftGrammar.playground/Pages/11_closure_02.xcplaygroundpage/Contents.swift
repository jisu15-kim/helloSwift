//: [Previous](@previous)

import Foundation

//// 매개변수로서의 클로저
//
//func completion() {
//
//}
//
//// completion 이라는 클로저를 매개변수로 가지는 메소드 정의
//func sayHi(completion: () -> Void) {
//    print("sayHi() called")
//    sleep(2) // 2초 멈춰 !
//    // completion 클로저 실행
//    completion()
//}
//
//// 메소드 호출부에서 이벤트 종료를 알 수 있다.
//sayHi(completion: {
//    print("2초가 지났음 - 1")
//})
//
//sayHi() {
//    print("2초가 지났음 - 2")
//}
//
//sayHi {
//    print("2초가 지났음 - 3")
//}
//
//// 매개변수로써 데이터를 반환하는 클로저
//
//func sayHiWithName(completion: (String) -> Void) {
//    print("sayHiWithName called")
//    sleep(2) // 잠깐 멈춰
//    // 클로저를 실행과 동시에 데이터를 반환
//    completion("오늘도 빡코딩 하고 계신가요")
//}
//
//sayHiWithName(completion: { (comment: String) in
//    print("2초 뒤에 그가 말했다! comment - 1 : \(comment)")
//})
//
//sayHiWithName(completion: { comment in
//    print("2초 뒤에 그가 말했다! comment - 2 : \(comment)")
//})
//
//sayHiWithName { comment in
//    print("2초 뒤에 그가 말했다! comment - 3 : \(comment)")
//}
//
//sayHiWithName {
//    print("2초 뒤에 그가 말했다! comment - 4 : ", $0)
//}
//
//func sayHiOptional(completion: (() -> Void)? = nil ) {
//    print("sayHi() called")
//    sleep(2)
//    completion?()
//}
//
//sayHiOptional()
//sayHiOptional(completion: {
//    print("2초가 지났다")
//})
//
//// (String) -> Void
//func completion(userInput: String){
//
//}
//
//
//// 매개변수로서 데이터를 여러개 반환하는 클로저
//// (String, String) -> Void
//func completion2(first: String, second: String) {
//
//}
//
//func sayHiWithFullName(completion: (String, String) -> Void) {
//    print("sayHiWithName called")
//    sleep(2) // 잠깐 멈춰
//    // 클로저를 실행과 동시에 데이터를 반환
//    completion("오늘", "빡코딩")
//
//}
//
//sayHiWithFullName { _, second in
//    print("1: 첫번째 : ", "두번째 : \(second)")
//}
//
//sayHiWithFullName {
//    print("2: 첫번째 : \($0)", "두번째 : \($1)")
//}
//

// (Int) -> String

func transform(number: Int) -> String {
    return "숫자 : \(number)"
}

var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]

var transformedNumbers0 = myNumbers.map { aNumber in
    return "숫자 : \(aNumber)"
}

var transformedNumbers1 = myNumbers.map { (aNumber: Int) -> String in
    return "숫자 : \(aNumber)"
}

var transformedNumbers2 = myNumbers.map {
    return "숫자 : \($0)"
}
