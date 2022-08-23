//: [Previous](@previous)

import Foundation

protocol PetHaving {
    associatedtype T
    var pets : [T] { get set }
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct Friend : PetHaving {
    var pets: [Animal] = []
}


struct Family : PetHaving {
    var pets: [String] = []
}

var myFriend = Friend()

myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)

var myFamily = Family()
myFamily.gotNewPet("거북이")
myFamily.gotNewPet("토끼")
myFamily.gotNewPet("강아지")
myFamily.pets
