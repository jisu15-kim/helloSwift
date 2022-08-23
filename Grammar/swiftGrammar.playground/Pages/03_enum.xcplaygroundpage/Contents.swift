//: [Previous](@previous)

import UIKit
import Foundation

// Enum - 타입을 나누는 것
enum School {
    case elementary
    case middle
    case high
    
    // case elementary, middle, high -> 동일
}

enum Grade : Int {
    case first = 1
    case second = 2
    case third = 3
}

// enum은 값을 가질 수 있고, 그 값에 접근을 위해서는 rawValue

enum schoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case High(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case let .High(name):
            return name
        }
    }
}

let yourSchool = School.high
let yourGrade = Grade.second.rawValue

print("yourSchool : ", yourSchool, "  yourGrade : ", yourGrade)

let yourMiddleSchoolName = schoolDetail.middle(name: "김지수중학교")
print("yourMiddleSchooleName = \(yourMiddleSchoolName.getName())")
