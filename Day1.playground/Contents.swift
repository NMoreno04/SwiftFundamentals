//: # variables, simple data types, and string interpolation
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/1)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
//Playground - noun: a place where people can play

import Cocoa

Variables:
var dinosaur = "T-Rex" 
//This is an example of  variables allow us to store temporary information in our program, and form a key part of almost every Swift program.

Strings and integers:
var meaningOfLife = 42
//Swift lets us create variables as strings and integers, but also there are other types of data too. When you create a variable Swift can figure out what type the variable it is based on what kind of data you assign to it, and from then on that variable will always have that one specific type.

String interpolation:
var str = "Your score was \(score)"
//When it comes time to showing information to the user whether that’s messages being printed out, text on buttons, or whatever fits your app idea – you will usually rely heavily on strings.
