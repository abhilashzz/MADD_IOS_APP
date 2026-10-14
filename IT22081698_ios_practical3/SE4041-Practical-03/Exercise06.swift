//
//  Exercise06.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Exercise 06: Structures and Classes
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 06: STRUCTS AND CLASSES")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: BASIC STRUCT WITH STORED PROPERTIES & DEFAULT VALUES
// Structs provide automatic memberwise initializers for their stored properties.
// -------------------------------------------------------------------------
print("--- Step 1: Struct with Stored Properties ---")
struct BasicStudent {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let student1 = BasicStudent(name: "Amal", mark: 72)
print("Name: \(student1.name)")
print("Mark: \(student1.mark)")
print("Registered: \(student1.registered)\n")

// -------------------------------------------------------------------------
// STEP 2: COMPUTED PROPERTIES
// Computed properties do not store a value directly; they calculate it on access.
// -------------------------------------------------------------------------
print("--- Step 2: Computed Property (Rectangle) ---")
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        return width * height
    }
}

let rect = Rectangle(width: 4, height: 3)
print("Rectangle 4 x 3 Area: \(rect.area)\n")

// -------------------------------------------------------------------------
// STEP 3: COMPUTED PROPERTY WITH ENUM (Guided Student Example)
// Note: This guided example uses the simplified 4-grade scale from lecture.
// -------------------------------------------------------------------------
print("--- Step 3: Computed Grade in Struct ---")
enum SimpleGrade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct GradedStudent {
    var name: String
    var mark: Int
    
    var grade: SimpleGrade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }
}

let gradedAmal = GradedStudent(name: "Amal", mark: 72)
print("Student: \(gradedAmal.name)")
print("Computed Grade: \(gradedAmal.grade.rawValue)\n")

// -------------------------------------------------------------------------
// STEP 4: METHODS IN STRUCTS
// Functions defined inside a type are methods.
// -------------------------------------------------------------------------
print("--- Step 4: Methods in Struct ---")
struct DetailedStudent {
    var name: String
    var mark: Int
    
    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let detailedKamal = DetailedStudent(name: "Kamal", mark: 75)
detailedKamal.displayDetails()
print()

// -------------------------------------------------------------------------
// STEP 5: MUTATING METHODS
// Structs are value types; methods modifying properties must be marked 'mutating'.
// -------------------------------------------------------------------------
print("--- Step 5: mutating Method in Struct ---")
struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print("Counter value after two increments: \(counter.count)\n")

// -------------------------------------------------------------------------
// STEP 6: CLASSES & INITIALIZERS
// Classes are reference types and require explicit initializers.
// -------------------------------------------------------------------------
print("--- Step 6: Class with Initializer and Method ---")
class Lecturer {
    var name: String
    var module: String
    
    init(name: String, module: String) {
        self.name = name
        self.module = module
    }
    
    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()
print()

// -------------------------------------------------------------------------
// STEP 7: VALUE SEMANTICS (STRUCT COPYING)
// When a struct is assigned to a new variable, an independent copy is made.
// Modifying the copy does not alter the original instance.
// -------------------------------------------------------------------------
print("--- Step 7: Struct Value Semantics (Independent Copy) ---")
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint

secondPoint.x = 99

print("firstPoint.x:  \(firstPoint.x) (remains unchanged)")
print("secondPoint.x: \(secondPoint.x) (modified copy)")
print()

// -------------------------------------------------------------------------
// STEP 8: REFERENCE SEMANTICS (CLASS SHARING)
// When a class instance is assigned to a new variable, both point to the
// exact same object in heap memory. Changes through one reference affect both.
// -------------------------------------------------------------------------
print("--- Step 8: Class Reference Semantics (Shared Instance) ---")
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter

secondCounter.count = 99

print("firstCounter.count:  \(firstCounter.count) (reflects modification)")
print("secondCounter.count: \(secondCounter.count) (reflects modification)")
