//
//  Exercise05.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Exercise 05: Enumerations
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 05: ENUMERATIONS IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: BASIC ENUM
// An enumeration defines a common type for a group of related values.
// -------------------------------------------------------------------------
print("--- Step 1: Basic Enumeration ---")
enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
print("Initial direction: \(direction)")

// Inferred type allows dot syntax
direction = .south
print("Reassigned direction: \(direction)\n")

// -------------------------------------------------------------------------
// STEP 2: ENUM WITH EXHAUSTIVE SWITCH
// When all enum cases are handled, 'default' is not required.
// -------------------------------------------------------------------------
print("--- Step 2: Enum with Exhaustive switch ---")
enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered
switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}
print()

// -------------------------------------------------------------------------
// STEP 3: RAW VALUES
// Enum cases can come prepopulated with default values of the same type.
// -------------------------------------------------------------------------
print("--- Step 3: Enum with Raw Values ---")
enum ExamGrade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let awardedGrade = ExamGrade.b
print("Enum Case: \(awardedGrade)")
print("Raw Value: \(awardedGrade.rawValue)\n")

// -------------------------------------------------------------------------
// ACTIVITY 6: MODULE STATUS ENUM
// Raw values must exactly match:
//   - "Not Started"
//   - "In Progress"
//   - "Completed"
// -------------------------------------------------------------------------
print("--- Activity 6: ModuleStatus Enum ---")
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let practicalStatus = ModuleStatus.inProgress
print("Module Status Case: \(practicalStatus)")
print("Module Status Raw Value: \(practicalStatus.rawValue)")

// Additional demonstration of other cases
let statusList: [ModuleStatus] = [.notStarted, .inProgress, .completed]
print("All possible module status raw values:")
for status in statusList {
    print("  -> \(status.rawValue)")
}
