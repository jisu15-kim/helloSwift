import Foundation
import Combine

// PassthroughSubject
let relay = PassthroughSubject<String, Never>()
let subscription1 = relay.sink { value in
    print ("Subscription1 receved value = \(value)")
}

relay.send("Hello")
relay.send("World")



// CurrentValueSubject

let variable = CurrentValueSubject<String, Never>("")

variable.send("Initial Text")

let subscription2 = variable.sink { value in
    print("Subscription2 received value = \(value)")
}

variable.send("More text")
variable.value

let publisher = ["Here", "We", "Go"].publisher

publisher.subscribe(relay)

