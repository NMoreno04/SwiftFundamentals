//: # closures part two
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/7)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

Using closures as parameters when they accept parameters:
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I ar
    
        travel { (place: String) in
            print("I'm going to \(place) in my car")
        }

        Using closures as parameters when they return values:
    
    func travel(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }

    travel { (place: String) -> String in
        return "I'm going to \(place) in my car"
   }
//In our simplified example, our reducer will accept two parameters: an array of numbers, and a closure that can reduce that array down to a single value. For example, it might accept an array of numbers and add them together, then return the final total. To do that, the closure will accept two parameters: one to track the current value , and the current value that needs to be added to the reduced value.

    Shorthand parameter names:
    func travel(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }
    travel { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }
    travel { place -> String in
        return "I'm going to \(place) in my car"
    }
    travel { place in
        return "I'm going to \(place) in my car"
    }
    travel { place in
        "I'm going to \(place) in my car"
    }
    travel {
        "I'm going to \($0) in my car"
    }

//When working with closures, Swift gives us a special shorthand parameter syntax that makes it extremely consider to write closures. This syntax automatically numbers parameter names as $0, $1, $2, and so on – we can’t use names such as these in our own code, so when you see them it’s immediately clear these are shorthand syntax for closures.

    Closures with multiple parameters:
    func travel(action: (String, Int) -> String) {
        print("I'm getting ready to go.")
        let description = action("London", 60)
        print(description)
        print("I arrived!")
    }
    travel {
        "I'm going to \($0) at \($1) miles per hour."
    }

//Swift’s closures are like Swift’s functions, so they can take any number of parameters. I’m not saying you can’t write closures that take four or more parameters, only that it’s extremely rare – one or two parameters covers the vast majority of cases, with three parameters being most of the remainder.

    Returning closures from functions:
    func travel() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }
    let result = travel()
    result("London")
    let result2 = travel()("London")
//In the same way that you can pass a closure to a function, you can get closures returned from a function too.
    //The syntax for this is a bit confusing a first, because it uses -> twice: once to specify your function’s return value, and a second time to specify your closure’s return value.

    Capturing values:
    func travel() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }
    let result = travel()
    result("London")
    func travel() -> (String) -> Void {
        var counter = 1

        return {
            print("\(counter). I'm going to \($0)")
            counter += 1
        }
    }
    result("London")
    result("London")
    result("London")
//One of the most important features of Swift’s closures is that they capture values they use. At the same time, one of the most confusing features of Swift is that they capture values they use. Put simply, value capturing takes place so that your closure always has access to the data it needs to work, which means Swift can run the closure safely.
