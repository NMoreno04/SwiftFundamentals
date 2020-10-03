//: # arrays, dictionaries, sets, and enums
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/2)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
import Cocoa

var str = "Hello, playground"
Arrays:
var averages = [98.5, 97.1, 99.9]
//We can create constants and variables of arrays just like other types of data, but the difference is that arrays hold many values inside them. Arrays in Swift can be as large or as small as you want. If they are variable, you can add to them freely to build up your data over time, or you can remove or even rearrange items if you want. Swift will automatically crash your program if you attempt to read an array using an invalid index.

Sets:
let colors2 = Set(["red", "green", "blue", "red", "blue"])
//So, when you say «does this set contain item X,» you’ll get an answer in a split second no matter how big the set is. In comparison, arrays must store their items in the order you give them, so to check whether item X exists in an array containing 10,000 items Swift needs to start at the first item and check every single item until it’s found – or perhaps it isn’t found at all.

Tuples:
var name = (first: "Taylor", last: "Swift")
//Both tuples and arrays allow us to hold several values in one variable, but tuples hold a fixed set of things that can’t be changed, whereas variable arrays can have items added to them indefinitely.

Dictionaries:
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73]
    //Like sets, dictionaries don’t store our items with a specific order, so they optimize the way they store items for fast retrieval. So, when we say user it will send back the item at that key instantly, even if we have a dictionary with 100,000 items inside.

Enumerations:
let result = "failure"
//Well, at their simplest an enum is simply a nice name for a value. We can make an enum called Direction with cases for north, south, east, and west, and refer to those in our code. So, enums are a way of us saying Direction. Behind the scenes, Swift can store its enum values very simply, so they are much faster to create and store than something like a string.


