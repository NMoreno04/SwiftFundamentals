//: # loops, loops, and more loops
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/4)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

For Loops:
let count = 1...10
for album in albums {
    print("\(album) is on Apple Music")}
If you don’t use the constant that for loops give
for _ in 1...5 {
    print("play")}

//Every time the loop goes around, Swift will take one item from the names array, put it into the name constant, then execute the body of our loop – that’s the print method. Of course, Swift can really see that anyway – it can see whether or not you’re using name inside the loop, so it can do the same job without the underscore.

While loops:
var number = 1

while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")
//Swift gives us for and while loops, and both are commonly used.
//The main difference is that for loops are generally used with finite sequences: we loop through the numbers 1 through 10, or through the items in an array, for example.

Repeat loops:
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!"
     // For example, this print() function will never be run, because false is always false:
while false {
    print("This is false")}
//for repeat
repeat {
    print("This is false")
} while false
//Swift’s for and while loops are overwhelmingly the most common ways to create loops, but we also have a third option called repeat that is similar to a while loop except it will always run its loop body at least once. The answer is partly something programmers call «DRY»: Don’t Repeat Yourself. We usually prefer to write code once and only once, and consider repeated code to be a sign that something has gone wrong. Some folks take this to an extreme and repeat nothing and that’s usually a bad idea, but here we can definitely avoid repeating ourself with a repeat loop.

Summary:
//Loops let us repeat code until a condition is false.
//The most common loop is for, which assigns each item inside the loop to a temporary constant.
//There are while loops, which you provide with an explicit condition to check.
//Although they are similar to while loops, repeat loops always run the body of their loop at least once.
//You can skip items in a loop using continue.
