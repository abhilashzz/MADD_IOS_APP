//
//  Exercise02.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Exercise 02: guard
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 02: GUARD IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: BASIC GUARD FOR EARLY EXIT
// 'guard let' unwraps an optional early; requires 'return' or exit on failure.
// Distinct name 'registerBasic' avoids conflicting redeclarations.
// -------------------------------------------------------------------------
print("--- Step 1: Basic guard for Optional Unwrapping ---")
func registerBasic(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    print("Registered \(name)")
}

registerBasic("Kamal")
registerBasic(nil)
print()

// -------------------------------------------------------------------------
// STEP 2: GUARD WITH MULTIPLE VALIDATIONS
// Validates both non-nil status and non-empty string.
// -------------------------------------------------------------------------
print("--- Step 2: guard with Multiple Validations ---")
func registerValidated(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    
    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }
    
    print("Registered \(name)")
}

print("Testing nil:")
registerValidated(nil)

print("Testing empty string \"\":")
registerValidated("")

print("Testing valid string \"Kamal\":")
registerValidated("Kamal")
print()

// -------------------------------------------------------------------------
// ACTIVITY 3: CHECK STUDENT DETAILS
// Requirements:
//   1. If name is nil -> "Student name unavailable"
//   2. If mark is nil -> "Student mark unavailable"
//   3. Otherwise      -> "\(name) received \(mark) marks"
// -------------------------------------------------------------------------
print("--- Activity 3: checkStudent with guard let ---")
func checkStudent(name: String?, mark: Int?) {
    guard let validName = name else {
        print("Student name unavailable")
        return
    }
    
    guard let validMark = mark else {
        print("Student mark unavailable")
        return
    }
    
    print("\(validName) received \(validMark) marks")
}

print("Test 1 - Missing Name:")
checkStudent(name: nil, mark: 75)

print("Test 2 - Missing Mark:")
checkStudent(name: "Kamal", mark: nil)

print("Test 3 - Both Valid:")
checkStudent(name: "Kamal", mark: 75)
