//: [Previous](@previous)

import Foundation

protocol Naming {
    var lastName : String { get set }
    var firstName : String { get set }
    func getName() -> String
}

extension Naming {
    func getFullName() -> String {
        self.lastName + " " + self.firstName
        // extension 을 활용한다면 로직을 넣을 수 있다
    }
}


struct friend : Naming {
    var lastName: String
    
    var firstName: String
    
    func getName() -> String {
        return self.lastName
    }
}

var myFriend = friend(lastName: "김", firstName: "지수")
myFriend.getName()
myFriend.getFullName()
