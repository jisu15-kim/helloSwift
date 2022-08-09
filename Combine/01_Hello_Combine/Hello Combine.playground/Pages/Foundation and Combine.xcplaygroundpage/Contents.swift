//: [Previous](@previous)

import Foundation
import Combine
import UIKit



// URLSessionTask Publisher and JSON Decoding Operator
// 서버에서 데이터를 받아오는 것을 구현

struct SomeDecodable: Decodable { }

URLSession.shared.dataTaskPublisher(for: URL(string: "heets://google.com")!)
    .map { data, response in
    return data
}
.decode(type: SomeDecodable.self, decoder: JSONDecoder())


// Notifications
let center = NotificationCenter.default
let noti = Notification.Name("MyNoti")
let notiPublisher = center.publisher(for: noti, object: nil)
let subscription = notiPublisher.sink { _ in
    print("Noti Received")
}

center.post(name: noti, object: nil)
subscription.cancel()




// KeyPath binding to NSObject instances

let ageLabel = UILabel()
print("text : \(ageLabel.text)")
Just(28)
    .map { "Age is \($0)"}
    .assign(to: \.text, on: ageLabel)
print("text : \(ageLabel.text)")



// Timer
// autoconnect 를 이용하면 subscribe 되면 바로 시작함
let timerPublisher = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()

let subscription2 = timerPublisher.sink { time in
    print("time : \(time)")
}

DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: subscription2.cancel)


//: [Next](@next)
