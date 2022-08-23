//: [Previous](@previous)

import Foundation

protocol Naming {
    var name : String { get set }
    func getName() -> String
}

protocol Aging {
    var age : Int { get set }
}

protocol UserNotifiable : Naming, Aging {
    
}

//class myBestFriend : UserNotifiable {
//
//}

struct myFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        return self.name
    }
    
    var age: Int
    
    
}
