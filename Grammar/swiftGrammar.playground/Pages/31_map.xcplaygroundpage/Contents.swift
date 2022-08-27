//: [Previous](@previous)

import Foundation

let FriendsArray : [String] = ["철수", "영희", "수잔", "제임스", "마크"]

let myFriends = FriendsArray.map { aFriend in
    return "내 친구다 -->" + aFriend
}

let bestFriednsArray : [String?] = ["철수", nil, "수잔", nil, "마크"]

//let myBestFriends : [String] = bestFriednsArray.map { aBestFriend in
//    let aFriend = aBestFriend ?? ""
//    return "내 베프 -> " + aFriend
//}

let myBestFriends : [String] = bestFriednsArray.compactMap { aBestFriend in
    return aBestFriend
}


let numbers = [22, 33, 44, 55]

let myNumbers : [String] = numbers.map {
    return "내 숫자 : \($0)"
}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "송아지" : "음메"]

let myPets : [String] = myPetDictionary.map { (animal: String, cry: String) in
    return "\(animal)의 소리는 \(cry)입니다"
}

