//
//  Exercise02.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 02: Sets
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 02: SETS IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: CREATE A SET
// A Set stores unique, unordered values. Fast membership test O(1).
// -------------------------------------------------------------------------
print("--- Step 1: Create a Set ---")
var towns: Set = ["Malabe", "Kandy", "Galle"]
print("Initial towns set: \(towns)")
print("(Note: Order is not guaranteed in sets because they are hash-based.)\n")

// -------------------------------------------------------------------------
// STEP 2: INSERT VALUES & ENFORCE UNIQUENESS
// Inserting an existing item is ignored; duplicate values are not stored.
// -------------------------------------------------------------------------
print("--- Step 2: Insert Values ---")
towns.insert("Jaffna")
towns.insert("Kandy") // Duplicate insertion
print("Towns after inserting 'Jaffna' and duplicate 'Kandy': \(towns)")
print("Towns count: \(towns.count)\n")

// -------------------------------------------------------------------------
// STEP 3: CHECK MEMBERSHIP
// Sets provide very efficient contains() lookups.
// -------------------------------------------------------------------------
print("--- Step 3: Check Membership ---")
print("Does towns contain 'Kandy'? \(towns.contains("Kandy"))")
print("Does towns contain 'Colombo'? \(towns.contains("Colombo"))\n")

// -------------------------------------------------------------------------
// STEP 4: REMOVE AN ITEM
// -------------------------------------------------------------------------
print("--- Step 4: Remove an Item ---")
towns.remove("Galle")
print("Towns after removing 'Galle': \(towns)\n")

// -------------------------------------------------------------------------
// STEP 5: SET OPERATIONS
// Demonstrating union, intersection, subtracting, symmetricDifference.
// .sorted() is used for deterministic console presentation.
// -------------------------------------------------------------------------
print("--- Step 5: Set Operations ---")
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print("Swift Class: \(swiftClass.sorted())")
print("Kotlin Class: \(kotlinClass.sorted())")
print("Union (all unique students): \(swiftClass.union(kotlinClass).sorted())")
print("Intersection (students in both classes): \(swiftClass.intersection(kotlinClass).sorted())")
print("Subtracting (in Swift class only): \(swiftClass.subtracting(kotlinClass).sorted())")
print("Symmetric Difference (in only one class): \(swiftClass.symmetricDifference(kotlinClass).sorted())\n")

// -------------------------------------------------------------------------
// ACTIVITY 2: STUDENT ENROLMENT SETS
// -------------------------------------------------------------------------
print("--- Activity 2: Student Enrolment Sets ---")
// At least four names each, with at least two shared ("Nimali", "Ruwan")
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun"]
let gameTechnologyStudents: Set = ["Nimali", "Ruwan", "Sanduni", "Dilshan"]

print("Mobile Development Students: \(mobileDevelopmentStudents.sorted())")
print("Game Technology Students: \(gameTechnologyStudents.sorted())")

// 1. All students
let allStudents = mobileDevelopmentStudents.union(gameTechnologyStudents).sorted()
print("1. All students: \(allStudents)")

// 2. Students taking both modules
let bothModules = mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted()
print("2. Students taking both modules: \(bothModules)")

// 3. Students taking only Mobile Development
let mobileOnly = mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted()
print("3. Students taking only Mobile Development: \(mobileOnly)")

// 4. Students taking only one of the modules
let onlyOneModule = mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted()
print("4. Students taking only one module: \(onlyOneModule)")
