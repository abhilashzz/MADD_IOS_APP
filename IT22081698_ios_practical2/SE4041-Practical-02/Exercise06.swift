//
//  Exercise06.swift
//  SE4041 - Mobile Application Design & Development
//  Author: Abhilash K A T W (IT22081698)
//  Practical 02 â€“ Collections & Control Flow in Swift
//  Exercise 06 â€“ Loops
//

import Foundation

// MARK: - Part A: for-in Loops
print("--- Part A: for-in Loops ---")
for i in 1...5 {
    print("Week \(i)")
}

// Loop Through an Array
print("\n--- Loop Through an Array ---")
let names = ["Amal", "Nimali", "Ruwan"]
for name in names {
    print(name)
}

// Using enumerated()
print("\n--- Using enumerated() ---")
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// MARK: - Part B: while Loop
print("\n--- Part B: while Loop ---")
var balance = 1000
var week = 0
while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// MARK: - Part C: repeat-while Loop
print("\n--- Part C: repeat-while Loop ---")
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// MARK: - break and continue
print("\n--- break and continue Example ---")
let exampleMarks = [72, -1, 65, 48, 90]
for mark in exampleMarks {
    if mark < 0 {
        continue
    }
    if mark == 90 {
        break
    }
    print(mark)
}

// MARK: - Activity 6
print("\n--- Activity 6: Filter and Terminate Loop ---")
let marks = [72, -1, 55, 43, 90, 88]
print("Processing marks: \(marks)")
for mark in marks {
    // 1. Ignore negative marks using continue
    if mark < 0 {
        continue
    }
    // 2. Stop processing if you find 90
    if mark == 90 {
        break
    }
    // 3. Print every valid mark processed before the loop stops
    print("Valid mark:", mark)
}

// MARK: - Putting Collections and Control Flow Together
print("\n--- Putting Collections and Control Flow Together ---")
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

