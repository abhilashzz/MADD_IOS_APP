//
//  Exercise04.swift
//  SE4041 - Mobile Application Design & Development
//  Author: Abhilash K A T W (IT22081698)
//  Practical 02 â€“ Collections & Control Flow in Swift
//  Exercise 04 â€“ if, else if, and else
//

import Foundation

// MARK: - Worked Example: Mark Evaluation
print("--- Worked Example: if / else if / else ---")
func evaluateMark(_ mark: Int) {
    if mark >= 75 {
        print("Distinction")
    } else if mark >= 50 {
        print("Pass")
    } else {
        print("Fail")
    }
}

let mark = 68
evaluateMark(mark)

// MARK: - Activity 4 â€“ Attendance Evaluation
print("\n--- Activity 4: Attendance Evaluation ---")

func evaluateAttendance(_ attendance: Int) {
    if attendance >= 90 {
        print("Excellent attendance")
    } else if attendance >= 80 {
        print("Good attendance")
    } else if attendance >= 70 {
        print("Acceptable attendance")
    } else {
        print("Low attendance")
    }
}

let attendance = 78
evaluateAttendance(attendance)

// Test your program using different values
print("\n--- Testing with Different Attendance Values ---")
let testValues = [95, 82, 74, 55]
for value in testValues {
    print("Attendance: \(value)% -> ", terminator: "")
    evaluateAttendance(value)
}

