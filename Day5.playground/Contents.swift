//: # functions, parameters, and errors
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/5)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

Functions:
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
printHelp()
//Functions are designed to let us re-use code easily, which means we don’t have to copy and paste code to get common behaviors.
//There are three times you’ll want to create your own functions.
//If you have one long function it can be hard to follow everything that’s going on, but if you break it up into three or four smaller functions then it becomes easier to follow.


Parameters:
print("Hello, world!")
func square(number: Int) {
    print(number * number)
}
square(number: 8)
//Swift lets you send values to a function that can then be used inside the function to change the way it behaves. We’ve used this already – we’ve been sending strings and integers to the print() function.
//Values sent into functions this way are called parameters. To make your own functions accept parameters, give each parameter a name, then a colon, then tell Swift the type of data it must be.
