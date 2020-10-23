//: # optionals, unwrapping, and typecasting
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/12)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//unwrap
func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}
//Swift’s optionals can either store a value, such as 5 or “Hello”, or they might be nothing at all, trying to add two numbers together is only possible if the numbers are actually there, which is why Swift won’t let us try to use the values of optionals unless we unwrap them, unless we check there’s actually a value there, then take the value out for us.

//optional chaining
let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names["Vincent"]?.first?.uppercased()
//Swift’s optional chaining lets us dig through several layers of optionals in a single line of code, and if any one of those layers is nil then the whole line becomes nil. Optional chaining makes for a very good companion to nil coalescing, because it allows you to dig through layers of optionals while also providing a sensible fall back if any of the optionals are nil.

//optional try
do {
    let result = try runRiskyFunction()
    print(result)
} catch {
    // it failed!
}
if let result = try? runRiskyFunction() {
    print(result)
}
//We can run throwing functions using do, try, and catch in Swift, to convert a throwing function call into an optional. If the function succeeds, its return value will be an optional containing whatever you would normally have received back, and if it fails the return value will be an optional set to nil.

//Typecasting
class Person {
    var name = "Anonymous"
}

class Customer: Person {
    var id = 12345
}

class Employee: Person {
    var salary = 50_000
}
let customer = Customer()
let employee = Employee()
let people = [customer, employee]
for person in people {
    if let customer = person as? Customer {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employee {
        print("I'm an employee, earning $\(employee.salary)")
    }
}
//Type casting lets us tell Swift that an object it thinks is type A is actually type B, which is helpful when working with protocols and class inheritance.


