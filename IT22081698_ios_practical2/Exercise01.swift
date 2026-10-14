//
//  Exercise01.swift
//  SE4041 - Mobile Application Design & Development
//  Author: Abhilash K A T W (IT22081698)
//  Practical 02 â€“ Collections & Control Flow in Swift
//  Exercise 01 â€“ Arrays
//

import Foundation

// MARK: - Step 1 â€“ Create an Array
print("--- Step 1: Create an Array ---")
var marks = [72, 65, 48, 90, 55]
print(marks)

// MARK: - Step 2 â€“ Access Array Elements
print("\n--- Step 2: Access Array Elements ---")
print(marks[0])
print(marks[2])
print(marks[4])

// MARK: - Step 3 â€“ Useful Array Properties
print("\n--- Step 3: Useful Array Properties ---")
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)
print(marks.last as Any)

// MARK: - Step 4 â€“ Modify an Array
print("\n--- Step 4: Modify an Array ---")
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// MARK: - Step 5 â€“ Useful Array Methods
print("\n--- Step 5: Useful Array Methods ---")
let marksArray = [72, 65, 48, 90, 55]
print(marksArray.max()!)
print(marksArray.min()!)
print(marksArray.contains(90))
print(marksArray.sorted())
print(marksArray.sorted(by: >))

let total = marksArray.reduce(0, +)
print(total)

let average = Double(total) / Double(marksArray.count)
print(average)

// MARK: - Activity 1
print("\n--- Activity 1: Modules Array ---")
var modules = ["SE4041", "IT4010", "IT4020", "IE4011", "SE4020"]

// 1. Display the entire array
print("1. All modules:", modules)

// 2. Display the first module
print("2. First module:", modules.first ?? "None")

// 3. Display the last module
print("3. Last module:", modules.last ?? "None")

// 4. Add one new module
modules.append("SE4050")
print("4. Added new module:", modules)

// 5. Display the number of modules
print("5. Total number of modules:", modules.count)

// 6. Check whether "SE4041" exists in the array
print("6. Does 'SE4041' exist?:", modules.contains("SE4041"))

