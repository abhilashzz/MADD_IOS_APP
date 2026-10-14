//
//  Exercise04.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 04: if, else if, and else
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 04: IF / ELSE IF / ELSE")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: GUIDED MARK EXAMPLE
// Demonstrates sequential condition evaluation from top to bottom.
// -------------------------------------------------------------------------
print("--- Guided Example: Student Mark Evaluation ---")
let mark = 68
print("Mark: \(mark)")

if mark >= 75 {
    print("Result: Distinction")
} else if mark >= 50 {
    print("Result: Pass")
} else {
    print("Result: Fail")
}
print("(Expected output: Pass)\n")

// -------------------------------------------------------------------------
// ACTIVITY 4: ATTENDANCE EVALUATION
// Bands:
//   90 or above -> Excellent attendance
//   80 to 89    -> Good attendance
//   70 to 79    -> Acceptable attendance
//   Below 70    -> Low attendance
// -------------------------------------------------------------------------
print("--- Activity 4: Attendance Evaluation ---")

func evaluateAttendance(_ attendance: Int) {
    print("Testing Attendance = \(attendance)%:")
    if attendance >= 90 {
        print("  -> Excellent attendance")
    } else if attendance >= 80 {
        print("  -> Good attendance")
    } else if attendance >= 70 {
        print("  -> Acceptable attendance")
    } else {
        print("  -> Low attendance")
    }
}

// 1. Required default test value from sheet
let attendance = 78
evaluateAttendance(attendance)

print("\n--- Activity 4: Testing Boundary & Sample Values ---")
// Testing boundary and range values
let testValues = [95, 90, 89, 80, 79, 70, 69, 55]
for value in testValues {
    evaluateAttendance(value)
}
