//
//  Exercise01.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Exercise 01: Functions
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 01: FUNCTIONS IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: A SIMPLE FUNCTION
// Reusable named block of code declared with 'func'.
// -------------------------------------------------------------------------
print("--- Step 1: Simple Function ---")
func greet() {
    print("Welcome to SE4041")
}

greet()
print()

// -------------------------------------------------------------------------
// STEP 2: FUNCTION WITH A PARAMETER
// Parameters allow passing values into the function call.
// -------------------------------------------------------------------------
print("--- Step 2: Function with Parameter ---")
func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")
print()

// -------------------------------------------------------------------------
// STEP 3: RETURNING A VALUE
// '-> Type' defines the return type.
// -------------------------------------------------------------------------
print("--- Step 3: Returning a Value ---")
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

let examResult = grade(for: 68)
print("Grade for 68: \(examResult)")
print()

// -------------------------------------------------------------------------
// STEP 4: ARGUMENT LABELS
// External argument labels make calls expressive; internal names are used inside.
// -------------------------------------------------------------------------
print("--- Step 4: Argument Labels ---")
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")
print()

// -------------------------------------------------------------------------
// STEP 5: REMOVING ARGUMENT LABELS WITH UNDERSCORE (_)
// '_' allows calling without argument labels.
// -------------------------------------------------------------------------
print("--- Step 5: Removing Argument Labels ---")
func double(_ number: Int) -> Int {
    return number * 2
}

print("Double of 10: \(double(10))")
print()

// -------------------------------------------------------------------------
// STEP 6: DEFAULT PARAMETER VALUES
// Default values allow optional omission at call sites.
// -------------------------------------------------------------------------
print("--- Step 6: Default Parameter Values ---")
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print("Default passMark (50) with 68: \(result(68))")
print("Custom passMark (75) with 68: \(result(68, passMark: 75))")
print()

// -------------------------------------------------------------------------
// ACTIVITY 1: CALCULATE AVERAGE
// Accepts three Double values and returns their average.
// -------------------------------------------------------------------------
print("--- Activity 1: calculateAverage ---")
func calculateAverage(_ m1: Double, _ m2: Double, _ m3: Double) -> Double {
    return (m1 + m2 + m3) / 3.0
}

let avgResult = calculateAverage(75, 82, 68)
print("Average of 75, 82, 68: \(avgResult)")
print()

// -------------------------------------------------------------------------
// ACTIVITY 2: FINAL RESULT WITH DEFAULT PARAMETER
// -------------------------------------------------------------------------
print("--- Activity 2: finalResult ---")
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print("finalResult(mark: 45) -> \(finalResult(mark: 45))")
print("finalResult(mark: 75) -> \(finalResult(mark: 75))")
print("finalResult(mark: 75, passMark: 80) -> \(finalResult(mark: 75, passMark: 80))")
