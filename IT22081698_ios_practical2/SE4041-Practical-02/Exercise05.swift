//
//  Exercise05.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 05: switch and Ranges
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 05: SWITCH AND RANGES")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: GUIDED STRING GRADE SWITCH
// In Swift:
// 1. 'break' is not required; cases do not fall through automatically.
// 2. Switch must be exhaustive (cover every possibility).
// 3. 'default' handles all unmatched cases.
// -------------------------------------------------------------------------
print("--- Step 1: String Grade Switch ---")
let grade = "B"
print("Grade input: \(grade)")

switch grade {
case "A":
    print("Result: Excellent")
case "B", "C":
    print("Result: Good")
case "D":
    print("Result: Needs Work")
default:
    print("Result: Unknown Grade")
}
print("(Expected output: Good)\n")

// -------------------------------------------------------------------------
// STEP 2: USING RANGES IN A SWITCH
// Closed range '...' includes both lower and upper bounds (e.g., 75...100).
// Half-open range '..<' includes lower bound but stops before upper bound (e.g., 50..<75).
// -------------------------------------------------------------------------
print("--- Step 2: Using Ranges in a Switch ---")
let mark = 68
print("Mark input: \(mark)")

switch mark {
case 75...100:
    print("Result: Distinction")
case 50..<75:
    print("Result: Pass")
case 0..<50:
    print("Result: Fail")
default:
    print("Result: Invalid Mark")
}
print("(Expected output: Pass)\n")

// -------------------------------------------------------------------------
// ACTIVITY 5: TEMPERATURE DESCRIPTION
// Categories:
//   Below 0  -> Freezing
//   0...15   -> Cold
//   16...25  -> Moderate
//   26...35  -> Warm
//   Above 35 -> Hot
// -------------------------------------------------------------------------
print("--- Activity 5: Temperature Description ---")

func describeTemperature(_ temperature: Int) {
    print("Temperature: \(temperature)°C")
    switch temperature {
    case ..<0:
        print("  -> Freezing")
    case 0...15:
        print("  -> Cold")
    case 16...25:
        print("  -> Moderate")
    case 26...35:
        print("  -> Warm")
    default:
        print("  -> Hot")
    }
}

// Required test value from sheet
let temperature = 27
describeTemperature(temperature)

print("\n--- Additional Temperature Tests ---")
let testTemperatures = [-5, 10, 20, 27, 40]
for t in testTemperatures {
    describeTemperature(t)
}
