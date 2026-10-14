//
//  Exercise06.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 06: Loops
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 06: LOOPS IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// PART A: FOR-IN LOOPS
// for-in iterates over closed ranges, arrays, sets, and dictionaries.
// -------------------------------------------------------------------------
print("--- Part A: for-in Range Loop ---")
for i in 1...5 {
    print("Week \(i)")
}
print()

print("--- Part A: Loop Through an Array ---")
let names = ["Amal", "Nimali", "Ruwan"]
for name in names {
    print("Name: \(name)")
}
print()

print("--- Part A: Using enumerated() ---")
// enumerated() provides index and element tuple during iteration
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}
print()

// -------------------------------------------------------------------------
// PART B: WHILE LOOP
// Evaluates condition before executing loop body; may run 0 times.
// -------------------------------------------------------------------------
print("--- Part B: while Loop ---")
var balance = 1000
var week = 0
while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)\n")

// -------------------------------------------------------------------------
// PART C: REPEAT-WHILE LOOP
// Executes loop body at least once, evaluating condition at the end.
// -------------------------------------------------------------------------
print("--- Part C: repeat-while Loop ---")
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3
print()

// -------------------------------------------------------------------------
// BREAK AND CONTINUE
// continue: skips the rest of current iteration and moves to next.
// break: terminates the loop completely.
// -------------------------------------------------------------------------
print("--- Guided Example: break and continue ---")
let sampleMarks = [72, -1, 65, 48, 90]
print("Input marks: \(sampleMarks)")
for mark in sampleMarks {
    if mark < 0 {
        continue // Skip negative marks
    }
    if mark == 90 {
        break // Stop at 90
    }
    print("Processed mark: \(mark)")
}
print()

// -------------------------------------------------------------------------
// ACTIVITY 6: FILTERING MARKS WITH BREAK & CONTINUE
// Array: [72, -1, 55, 43, 90, 88]
// Requirements:
// 1. Skip negative marks using continue.
// 2. Stop at 90 using break.
// 3. Print only valid marks processed before stopping (72, 55, 43).
// -------------------------------------------------------------------------
print("--- Activity 6: Filtering Marks ---")
let activityMarks = [72, -1, 55, 43, 90, 88]
print("Activity Marks input: \(activityMarks)")
print("Valid processed marks before 90:")
for mark in activityMarks {
    if mark < 0 {
        continue // Skip negative marks
    }
    if mark == 90 {
        break // Stop processing upon encountering 90
    }
    print(mark)
}
print()

// -------------------------------------------------------------------------
// PUTTING COLLECTIONS AND CONTROL FLOW TOGETHER
// Integrated worked example from lecture/lab sheet.
// -------------------------------------------------------------------------
print("--- Integrated Example: Collections & Control Flow ---")
let studentNames = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let studentMarks = [72, 45, 48, 90]
let passMark = 50
var passedStudents: [String] = []

for (index, mark) in studentMarks.enumerated() {
    if mark >= passMark {
        passedStudents.append(studentNames[index])
        print("\(studentNames[index]): \(mark) - Pass")
    } else {
        print("\(studentNames[index]): \(mark) - Fail")
    }
}
print("Passed Students: \(passedStudents)")
