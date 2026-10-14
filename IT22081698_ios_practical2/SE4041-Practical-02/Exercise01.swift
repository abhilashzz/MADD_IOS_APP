//
//  Exercise01.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 01: Arrays
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 01: ARRAYS IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: CREATE AN ARRAY
// An array is an ordered collection of values of the same type.
// -------------------------------------------------------------------------
print("--- Step 1: Create an Array ---")
var marks = [72, 65, 48, 90, 55]
print("Marks array: \(marks)\n")

// -------------------------------------------------------------------------
// STEP 2: ACCESS ARRAY ELEMENTS
// Swift arrays are zero-indexed. Accessing an out-of-bounds index causes a crash.
// -------------------------------------------------------------------------
print("--- Step 2: Access Array Elements ---")
print("First element (index 0): \(marks[0])")
print("Third element (index 2): \(marks[2])")
print("Fifth element (index 4): \(marks[4])\n")

// -------------------------------------------------------------------------
// STEP 3: USEFUL ARRAY PROPERTIES
// .first and .last return optionals because the array might be empty.
// -------------------------------------------------------------------------
print("--- Step 3: Useful Array Properties ---")
print("Total number of items (count): \(marks.count)")
print("Is array empty? (isEmpty): \(marks.isEmpty)")
print("First item (.first): \(marks.first as Any)")
print("Last item (.last): \(marks.last as Any)\n")

// -------------------------------------------------------------------------
// STEP 4: MODIFY AN ARRAY
// Arrays declared with 'var' are mutable (support append, insert, remove).
// -------------------------------------------------------------------------
print("--- Step 4: Modify an Array ---")
// Change value at index 2 from 48 to 52
marks[2] = 52
print("After updating index 2 to 52: \(marks)")

// Add new values
marks.append(88)
marks.insert(60, at: 1)
print("After append(88) and insert(60, at: 1): \(marks)")

// Remove values
marks.removeLast()
marks.remove(at: 1)
print("After removeLast() and remove(at: 1): \(marks)\n")

// -------------------------------------------------------------------------
// STEP 5: USEFUL ARRAY METHODS (Fresh data scope)
// Demonstrates max, min, contains, sorting, total, and average.
// -------------------------------------------------------------------------
print("--- Step 5: Useful Array Methods ---")
let originalMarks = [72, 65, 48, 90, 55]
print("Original Marks: \(originalMarks)")
print("Highest mark (max): \(originalMarks.max()!)")
print("Lowest mark (min): \(originalMarks.min()!)")
print("Contains 90? (contains): \(originalMarks.contains(90))")
print("Ascending sort: \(originalMarks.sorted())")
print("Descending sort: \(originalMarks.sorted(by: >))")

let total = originalMarks.reduce(0, +)
let average = Double(total) / Double(originalMarks.count)
print("Total marks: \(total)")
print("Average mark: \(average)\n")

// -------------------------------------------------------------------------
// ACTIVITY 1: MODULES ARRAY
// -------------------------------------------------------------------------
print("--- Activity 1: Modules Array ---")
// Demonstration module data including "SE4041"
var modules = ["SE4041", "IT4010", "IT4020", "IE4010", "SE4020"]

// 1. Display the entire array
print("1. All modules: \(modules)")

// 2. Display the first module safely
if let firstModule = modules.first {
    print("2. First module: \(firstModule)")
}

// 3. Display the last module safely
if let lastModule = modules.last {
    print("3. Last module: \(lastModule)")
}

// 4. Add one new module
modules.append("SE4030")
print("4. Added new module 'SE4030'")

// 5. Display the number of modules
print("5. Total modules count: \(modules.count)")

// 6. Check whether "SE4041" exists in the array
let hasSE4041 = modules.contains("SE4041")
print("6. Does 'SE4041' exist in modules? \(hasSE4041)")
