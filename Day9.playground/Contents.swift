//: # access control, static properties, and laziness
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/9)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//initializers:
struct User {
    var name: String
    var yearsActive = 0
}
//By default, all Swift structs get a synthesized memberwise initializer by default, which means that we automatically get an initializer that accepts values for each of the struct’s properties. This initializer makes structs easy to work with, but Swift does two further things that make it especially clever.


//access control:
private var learnedSections = Set<String>()
//Swift’s access control keywords let us restrict how different parts of our code can be accessed, but a lot of the time it’s just obeying the rules we put into place – we could remove them if we wanted and bypass the restrictions, so what’s the point? There are a few answers to that, but one is particularly easy so I’ll start there: sometimes access control is used in code you don’t own, so you can’t remove the restriction. This is common when you’re building apps with Apple’s APIs, for example: they place restrictions about what you can and cannot do, and you need to abide by those restrictions.

//static properties
struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}
//Most people learning Swift immediately see the value of regular properties and methods, but struggle to understand why static properties and methods would be useful. It’s certainly true that they are less useful than regular properties and methods, but they are still fairly common in Swift code. One common use for static properties and methods is to store common functionality you use across an entire app.
