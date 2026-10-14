//
//  Exercise03.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Exercise 03: Tuples
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 03: TUPLES IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: RETURNING MULTIPLE VALUES USING TUPLES
// Groups multiple values into a single compound return value.
// -------------------------------------------------------------------------
print("--- Step 1: Named Tuple Return ---")
func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)
    let minMark = marks.min() ?? 0
    let maxMark = marks.max() ?? 0
    let count = max(marks.count, 1)
    let avg = Double(total) / Double(count)
    
    return (minMark, maxMark, avg)
}

let result = summary(of: [72, 65, 48, 90])
print("Accessing by tuple element names:")
print("Minimum: \(result.minimum)")
print("Maximum: \(result.maximum)")
print("Average: \(result.average)\n")

// -------------------------------------------------------------------------
// STEP 2: TUPLE UNPACKING (DESTRUCTURING)
// -------------------------------------------------------------------------
print("--- Step 2: Tuple Unpacking ---")
let (low, high, avg) = summary(of: [72, 65, 48, 90])
print("Unpacked low: \(low)")
print("Unpacked high: \(high)")
print("Unpacked average: \(avg)\n")

// Tuple unpacking with wildcard '_' to ignore unneeded elements
let (minimumOnly, _, _) = summary(of: [72, 65, 48, 90])
print("Wildcard unpacked minimum only: \(minimumOnly)\n")

// -------------------------------------------------------------------------
// ACTIVITY 4: ANALYZE MARKS TUPLE
// Function returning (total: Int, average: Double).
// Handles empty input safely by returning (0, 0.0) to prevent division by zero.
// -------------------------------------------------------------------------
print("--- Activity 4: analyzeMarks ---")
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    guard !marks.isEmpty else {
        // Documented safe handling: return (0, 0.0) for empty array
        return (total: 0, average: 0.0)
    }
    
    let total = marks.reduce(0, +)
    let average = Double(total) / Double(marks.count)
    return (total: total, average: average)
}

let testMarks = [60, 70, 80, 90]
let analysis = analyzeMarks(testMarks)
print("Marks tested: \(testMarks)")
print("Total: \(analysis.total)")
print(String(format: "Average: %.1f", analysis.average))

// Safe empty input demonstration
let emptyAnalysis = analyzeMarks([])
print("\nSafe empty array test -> Total: \(emptyAnalysis.total), Average: \(emptyAnalysis.average)")
