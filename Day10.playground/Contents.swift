//: # classes and inheritance
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/10)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"



//Class inheritance
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
//a difference between classes and structs is that you can create a class based on a real existing class, it inherits all the properties and methods of the original class, and can add its own on top. This is called class inheritance or subclassing, the class you inherit from is called the “parent” or “super” class, and the new class is called the “child” class.
