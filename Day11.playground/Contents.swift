//: # protocols, extensions, and protocol extensions
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/11)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"


//Protocols
struct Book {
    var name: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}
//Protocols let us define how structs, classes, and enums ought to work: what methods they should have, and what properties they should have. Swift will remind these rules for us, so that when we say a type conforms to a protocol Swift will make sure it has all the methods and properties required by the protocol.

//Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()
xtension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
//Extensions let us add functionality to classes, structs, and more, which is helpful for modifying types we don’t own – types that were written by Apple or someone else, for example. Conformance grouping means adding a protocol conformance to a type as an extension, adding all the required methods inside that extension. For example, you might have an extension specifically to handle loading and saving of that type.
It’s worth adding here that many folks realize they have a large class and try to make it smaller by splitting it into extensions.

//Protocol extensions
let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
//Protocol extensions are used everywhere in Swift, which is why you’ll often see it described as a “protocol-oriented programming language.” We use them to add functionality directly to protocols, which means we don’t need to copy that functionality across many structs and classes.
