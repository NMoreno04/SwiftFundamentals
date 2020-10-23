//: # closures part one
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/6)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

Creating basic closures:
let driving = {
    print("I'm driving in my car")
}
//Swift lets us use functions just like any other type such as strings and integers.

Accepting parameters in a closure:
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
//To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.

Returning values from a closure:
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
//they are written similarly to parameters: you write them inside your closure, directly before the in keyword.
//To demonstrate this, we’re going to take our driving() closure and make it return its value rather than print it directly.

Closure as parameters:
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
//Swift’s closures can be used just like any other type of data, which means you can pass them into functions, take copies of them, and so on. One of the best examples I can give is the way Siri integrates with apps. Siri is a system service that runs from anywhere on your iOS device, but it’s able to communicate with apps – you can book a ride with Lyft, you can check the weather with Carrot Weather, and so on. Behind the scenes, Siri launches a small part of the app in the background to pass on our voice request, then shows the app’s response as part of the Siri user interface.
//Using a closure to send back data rather than returning a value from the function means Siri doesn’t need to wait for the function to complete, so it can keep its user interface interactive – it won’t freeze up.

Trailing closure syntax:
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
//Trailing closure syntax is designed to make Swift code easier to read, although some prefer to avoid it.


