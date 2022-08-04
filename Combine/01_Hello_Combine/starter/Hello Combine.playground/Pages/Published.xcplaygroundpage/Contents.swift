//: [Previous](@previous)

import Foundation
import UIKit
import Combine

final class SomeViewModel {
    @Published var name: String = "Jack"
    var age: Int = 20
}

final class Label {
    var text: String = ""
}

let label = Label()
let vm = SomeViewModel()
print("Text: \(label.text)")

vm.$name.assign(to: \.text, on: label)
print("Text: \(label.text)")

vm.name = "Jason"
print("Text: \(label.text)")



//: [Next](@next)
