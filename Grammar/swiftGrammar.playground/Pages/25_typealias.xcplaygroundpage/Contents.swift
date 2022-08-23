//: [Previous](@previous)

import Foundation

// typealias - 별칭

protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging
typealias FullNaming = Naming // 별칭을 만들어서 두개로 다 부를 수 있어

struct Friend : Friendable {
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    // Naming 및 Aging 을 모두 가져오는 것 Naming & Aging 과 같음
    
}

typealias FriendName = String
var friendName : FriendName = "김지수"

typealias Friends = [Friend]
var myFriendsArray : Friends = []

//typealias StringBlock = (String) -> Void

func sayHi(completion : (String) -> Void) {
    print("안녕하세요")
    completion("오늘도 빡코딩")
}

sayHi(completion: { saying in
    print("여기서 받음 : ", saying)
})
typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MY_TYPE.DOG
}

var myClass = MyClass()

myClass.myType = MyType.DOG
