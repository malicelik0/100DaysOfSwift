import UIKit

// Initializers

struct User {
    var username: String
}

var user = User(username: "twostraws")

struct User2 {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User2()
user2.username = "twostraws"

// Referring to the current instance

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")

var familyTree = FamilyTree()

ed.familyTree

// Static properties and methods

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student2 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}

print(Student2.classSize)

// Access control

struct Person3 {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let ed3 = Person3(id: "12345")

struct Person4 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

