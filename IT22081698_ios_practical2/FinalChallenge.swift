//
//  FinalChallenge.swift
//  SE4041 - Mobile Application Design & Development
//  Author: Abhilash K A T W (IT22081698)
//  Practical 02 â€“ Collections & Control Flow in Swift
//  Final Practical Task â€“ Student Performance Manager
//

import Foundation

// MARK: - Part A â€“ Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// MARK: - Helper Function: Determine Grade Using switch and Ranges (Part C)
func determineGrade(for mark: Int) -> String {
    switch mark {
    case 80...100:
        return "A"
    case 75..<80:
        return "A-"
    case 70..<75:
        return "B+"
    case 65..<70:
        return "B"
    case 60..<65:
        return "B-"
    case 55..<60:
        return "C+"
    case 45..<55:
        return "C"
    case 40..<45:
        return "C-"
    case 0..<40:
        return "F"
    default:
        return "Invalid Mark"
    }
}

// MARK: - Variables for Collections and Statistics
// Part D â€“ Empty array for passed students
var passedStudents: [String] = []

// Part E â€“ Set to store unique grades awarded
var gradesAwarded: Set<String> = []

// Additional Challenge â€“ Counters for passes and fails
var passCount = 0
var failCount = 0

// Total marks accumulator for Part F
var totalMarks = 0

// Output Header
print("==================================")
print("STUDENT PERFORMANCE")
print("==================================")

// Sort names alphabetically for consistent and clean display (Part B)
let sortedNames = studentMarks.keys.sorted()

for name in sortedNames {
    if let mark = studentMarks[name] {
        // Accumulate total for average calculation
        totalMarks += mark
        
        // Part C â€“ Determine Grade
        let grade = determineGrade(for: mark)
        
        // Part E â€“ Add grade to Set
        gradesAwarded.insert(grade)
        
        // Part D & Additional Challenge â€“ Pass/Fail check (Mark >= 50)
        if mark >= 50 {
            passedStudents.append(name)
            passCount += 1
        } else {
            failCount += 1
        }
        
        // Display Student Result
        print("\(name) - \(mark) - \(grade)")
    }
}

// MARK: - Part D â€“ Display Passed Students
print("----------------------------------")
print("Passed Students:")
for student in passedStudents {
    print(student)
}

// MARK: - Part E â€“ Display Unique Grades
print("----------------------------------")
print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

// MARK: - Part F â€“ Average Mark
print("----------------------------------")
let studentCount = studentMarks.count
let average = studentCount > 0 ? Double(totalMarks) / Double(studentCount) : 0.0
print("Class Average: \(String(format: "%.1f", average))")

// MARK: - Part G â€“ Highest and Lowest Marks
let marksList = Array(studentMarks.values)
if let highestMark = marksList.max(), let lowestMark = marksList.min() {
    print("Highest Mark: \(highestMark)")
    print("Lowest Mark: \(lowestMark)")
}

// MARK: - Additional Challenge: Search for a Student & Pass/Fail Counts
print("----------------------------------")
print("Search for a Student:")
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}

let nonExistentStudent = "Kasuni"
if let mark = studentMarks[nonExistentStudent] {
    print("\(nonExistentStudent)'s mark is \(mark)")
} else {
    print("Student not found")
}

print("\nPass/Fail Count:")
print("Passed: \(passCount)")
print("Failed: \(failCount)")
print("==================================")

