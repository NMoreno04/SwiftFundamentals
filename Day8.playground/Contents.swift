//: # structs, properties, and methods
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/8)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

Creating your own structs:
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"
//Swift’s tuples let us store several different named values inside a single variable, and a struct does much the same 
