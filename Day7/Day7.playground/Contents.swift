import UIKit

// Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters in a closure

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

// Returning values from a closure

let driving3 = { (place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// Closures as parameters

let driving4 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax

func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel2() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}


// Using closures as parameters when they accept parameters

func travel3(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel3 { (place: String) in
    print("I'm going to \(place) in my car")
}

// Using closures as parameters when they return values

func travel4(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel4 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names

func travel5(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel5 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel5 { place -> String in
    return "I'm going to \(place) in my car"
}

travel5 { place in
    return "I'm going to \(place) in my car"
}

travel5 { place in
    "I'm going to \(place) in my car"
}

travel5 {
    "I'm going to \($0) in my car"
}

// Closures with multiple parameters

func travel6(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel6 {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions

func travel7() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel7()
result("London")

let result2 = travel7()("London")

// Capturing values

func travel8() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result3 = travel9()
result("London")

func travel9() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

result3("London")
result3("London")
result3("London")

