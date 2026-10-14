//
//  FinalChallenge.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Final Practical Task: Student Performance Manager
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

// -------------------------------------------------------------------------
// PART A: STORE STUDENT MARKS
// Dictionary storing student name as key and exam mark as integer value.
// Baseline dataset guarantees verified results for viva evaluation.
// -------------------------------------------------------------------------
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// -------------------------------------------------------------------------
// PART C: GRADE DETERMINATION HELPER
// Uses switch and ranges according to Lecture 03 grade boundaries.
// -------------------------------------------------------------------------
func calculateGrade(for mark: Int) -> String {
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

// -------------------------------------------------------------------------
// PARTS B, D, E & ADDITIONAL CHALLENGES: PROCESSING DATA
// -------------------------------------------------------------------------
var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var passCount = 0
var failCount = 0

// Sort student names alphabetically for clean, deterministic presentation
let sortedStudentNames = studentMarks.keys.sorted()

print("==================================")
print("       STUDENT PERFORMANCE")
print("==================================")

// Display every student with their mark and calculated grade
for name in sortedStudentNames {
    if let mark = studentMarks[name] {
        let grade = calculateGrade(for: mark)
        gradesAwarded.insert(grade)
        
        // Pass threshold is mark >= 50
        if mark >= 50 {
            passedStudents.append(name)
            passCount += 1
        } else {
            failCount += 1
        }
        
        print("\(name) - \(mark) - \(grade)")
    }
}

print("----------------------------------")
print("Passed Students:")
for student in passedStudents {
    print(student)
}

print("----------------------------------")
print("Grades Awarded:")
// Sorted set output for clean display
for g in gradesAwarded.sorted() {
    print(g)
}

// -------------------------------------------------------------------------
// PART F & G: SUMMARY STATISTICS
// -------------------------------------------------------------------------
let marksList = Array(studentMarks.values)
let totalMarks = marksList.reduce(0, +)
let classAverage = Double(totalMarks) / Double(studentMarks.count)
let highestMark = marksList.max() ?? 0
let lowestMark = marksList.min() ?? 0

print("----------------------------------")
print(String(format: "Class Average: %.1f", classAverage))
print("Highest Mark: \(highestMark)")
print("Lowest Mark: \(lowestMark)")

// -------------------------------------------------------------------------
// ADDITIONAL CHALLENGES (PAGES 17 - 18)
// 1. Pass / Fail counts
// 2. Student Search using optional binding (if let)
// -------------------------------------------------------------------------
print("----------------------------------")
print("Pass / Fail Summary:")
print("Passed: \(passCount)")
print("Failed: \(failCount)")

print("----------------------------------")
print("Student Search Verification:")

// Successful search
let searchName1 = "Amal"
if let foundMark = studentMarks[searchName1] {
    print("\(searchName1)'s mark is \(foundMark)")
} else {
    print("Student not found")
}

// Unsuccessful search
let searchName2 = "Sunil"
if let foundMark = studentMarks[searchName2] {
    print("\(searchName2)'s mark is \(foundMark)")
} else {
    print("Student not found")
}
print("==================================")
