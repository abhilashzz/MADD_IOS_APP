//
//  Exercise03.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 02 – Collections & Control Flow in Swift
//  Exercise 03: Dictionaries
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("========================================")
print("  EXERCISE 03: DICTIONARIES IN SWIFT")
print("========================================\n")

// -------------------------------------------------------------------------
// STEP 1: CREATE A DICTIONARY
// A dictionary stores key-value pairs. Keys must be unique and Hashable.
// -------------------------------------------------------------------------
print("--- Step 1: Create a Dictionary ---")
var marks: [String: Int] = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print("Marks dictionary: \(marks)\n")

// -------------------------------------------------------------------------
// STEP 2: RETRIEVE A VALUE (OPTIONAL DEMONSTRATION)
// Dictionary lookup by key always returns an Optional because the key might not exist.
// 'as Any' preserves the demonstration without compiler warnings.
// -------------------------------------------------------------------------
print("--- Step 2: Retrieve a Value (Optional) ---")
print("Lookup 'Amal': \(marks["Amal"] as Any)")
print("(Returned as Optional because Swift cannot guarantee the key exists at runtime.)\n")

// -------------------------------------------------------------------------
// STEP 3: SAFELY RETRIEVE A VALUE (NIL-COALESCING)
// ?? provides a default fallback value if the key is not found.
// -------------------------------------------------------------------------
print("--- Step 3: Nil-Coalescing Operator ---")
print("Amal's mark (or default 0): \(marks["Amal"] ?? 0)")
print("Kasun's mark (key not found, returns default 0): \(marks["Kasun"] ?? 0)\n")

// -------------------------------------------------------------------------
// STEP 4: USE OPTIONAL BINDING (if let)
// Safely unwraps the value if the key exists.
// -------------------------------------------------------------------------
print("--- Step 4: Optional Binding with if let ---")
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Demonstrating with missing key
if let mark = marks["Kasun"] {
    print("Kasun scored \(mark)")
} else {
    print("Student 'Kasun' not found in dictionary\n")
}

// -------------------------------------------------------------------------
// STEP 5: ADD, UPDATE, AND REMOVE VALUES
// In Swift, subscript syntax handles insertion, update, and deletion (via nil).
// -------------------------------------------------------------------------
print("--- Step 5: Add, Update, and Remove Values ---")
// Add a student
marks["Sanduni"] = 90
print("After adding Sanduni (90): \(marks)")

// Update an existing student's mark
marks["Amal"] = 75
print("After updating Amal to 75: \(marks)")

// Remove a student by setting value to nil
marks["Ruwan"] = nil
print("After removing Ruwan: \(marks)\n")

// -------------------------------------------------------------------------
// ACTIVITY 3: PHONE BOOK DICTIONARY
// Phone numbers stored as strings to preserve leading zeros and formatting.
// -------------------------------------------------------------------------
print("--- Activity 3: Phone Book Dictionary ---")
var phoneBook: [String: String] = [
    "Amal": "0711234567",
    "Nimali": "0772345678",
    "Ruwan": "0753456789",
    "Sanduni": "0784567890"
]
print("Initial Phone Book: \(phoneBook)")

// 1. Add a new contact
phoneBook["Kasun"] = "0725678901"
print("1. Added Kasun: \(phoneBook["Kasun"] ?? "")")

// 2. Update one phone number
phoneBook["Amal"] = "0719876543"
print("2. Updated Amal's number: \(phoneBook["Amal"] ?? "")")

// 3. Remove one contact
phoneBook["Ruwan"] = nil
print("3. Removed Ruwan from phone book")

// 4. Search for an existing contact using if let
let searchName1 = "Nimali"
print("4. Searching for '\(searchName1)':")
if let number = phoneBook[searchName1] {
    print("   Found: \(searchName1) -> \(number)")
} else {
    print("   Contact not found")
}

// 5. Search for a missing contact using if let
let searchName2 = "Sunil"
print("5. Searching for missing contact '\(searchName2)':")
if let number = phoneBook[searchName2] {
    print("   Found: \(searchName2) -> \(number)")
} else {
    print("   Contact not found")
}
