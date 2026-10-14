//
//  Exercise02.swift
//  SE4041 - Mobile Application Design & Development
//  Author: Abhilash K A T W (IT22081698)
//  Practical 02 â€“ Collections & Control Flow in Swift
//  Exercise 02 â€“ Sets
//

import Foundation

// MARK: - Step 1 â€“ Create a Set
print("--- Step 1: Create a Set ---")
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// MARK: - Step 2 â€“ Insert Values
print("\n--- Step 2: Insert Values ---")
towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

// MARK: - Step 3 â€“ Check Membership
print("\n--- Step 3: Check Membership ---")
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// MARK: - Step 4 â€“ Remove an Item
print("\n--- Step 4: Remove an Item ---")
towns.remove("Galle")
print(towns)

// MARK: - Step 5 â€“ Set Operations
print("\n--- Step 5: Set Operations ---")
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print("Union:", swiftClass.union(kotlinClass).sorted())
print("Intersection:", swiftClass.intersection(kotlinClass).sorted())
print("Subtracting:", swiftClass.subtracting(kotlinClass).sorted())
print("Symmetric Difference:", swiftClass.symmetricDifference(kotlinClass).sorted())

// MARK: - Activity 2
print("\n--- Activity 2: Student Enrollment Sets ---")
// Create two sets with at least four names each and at least two shared students
var mobileDevelopmentStudents: Set<String> = ["Amal", "Nimali", "Kamal", "Kasun"]
var gameTechnologyStudents: Set<String> = ["Kamal", "Kasun", "Ruwan", "Sanduni"]

print("Mobile Development Students:", mobileDevelopmentStudents)
print("Game Technology Students:", gameTechnologyStudents)

// 1. All students
let allStudents = mobileDevelopmentStudents.union(gameTechnologyStudents)
print("\n1. All students:", allStudents.sorted())

// 2. Students taking both modules
let bothModules = mobileDevelopmentStudents.intersection(gameTechnologyStudents)
print("2. Students taking both modules:", bothModules.sorted())

// 3. Students taking only Mobile Development
let onlyMobile = mobileDevelopmentStudents.subtracting(gameTechnologyStudents)
print("3. Students taking only Mobile Development:", onlyMobile.sorted())

// 4. Students taking only one of the modules
let onlyOneModule = mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents)
print("4. Students taking only one of the modules:", onlyOneModule.sorted())

