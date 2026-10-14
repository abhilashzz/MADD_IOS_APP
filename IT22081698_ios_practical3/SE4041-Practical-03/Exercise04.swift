//
//  Exercise04.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Exercise 04: Closures, map, filter, and reduce
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 04: CLOSURES IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// GUIDED EXAMPLES: HIGHER-ORDER FUNCTIONS WITH CLOSURES
// Closures are self-contained blocks of functionality passed as arguments.
// -------------------------------------------------------------------------
let marks = [72, 45, 65, 48, 90]
print("Initial Marks: \(marks)\n")

// 1. FILTER: Selects values that satisfy the condition ($0 >= 50)
print("--- 1. filter ($0 >= 50) ---")
let passed = marks.filter { $0 >= 50 }
print("Passed marks: \(passed)\n")

// 2. MAP: Transforms every value ($0 + 5) without modifying original array
print("--- 2. map ($0 + 5) ---")
let increasedMarks = marks.map { $0 + 5 }
print("Increased marks: \(increasedMarks)\n")

// 3. REDUCE: Combines elements into a single aggregate value
print("--- 3. reduce (Sum of marks) ---")
let total = marks.reduce(0) { $0 + $1 }
print("Total marks: \(total)\n")

// -------------------------------------------------------------------------
// ACTIVITY 5: PRICES MANIPULATION WITHOUT LOOPS
// Array: [120.0, 250.0, 80.0, 500.0, 150.0]
// 1. Filter prices greater than 100
// 2. Map an increase of 10
// 3. Reduce to the total (1100.0)
// -------------------------------------------------------------------------
print("--- Activity 5: Prices Using Closures ---")
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]
print("Initial prices: \(prices)")

// 1. Filter prices > 100
let filteredPrices = prices.filter { $0 > 100 }
print("1. Prices greater than 100: \(filteredPrices)")

// 2. Map an increase of 10 to every price
let adjustedPrices = prices.map { $0 + 10 }
print("2. Prices increased by 10: \(adjustedPrices)")

// 3. Reduce to calculate total of all prices
let totalPrices = prices.reduce(0.0, +)
print("3. Total of all prices: \(totalPrices)")
