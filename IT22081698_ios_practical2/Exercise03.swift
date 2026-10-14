//
//  Exercise03.swift
//  SE4041 - Mobile Application Design & Development
//  Author: Abhilash K A T W (IT22081698)
//  Practical 02 â€“ Collections & Control Flow in Swift
//  Exercise 03 â€“ Dictionaries
//

import Foundation

// MARK: - Step 1 â€“ Create a Dictionary
print("--- Step 1: Create a Dictionary ---")
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// MARK: - Step 2 â€“ Retrieve a Value
print("\n--- Step 2: Retrieve a Value ---")
print(marks["Amal"] as Any)

// MARK: - Step 3 â€“ Safely Retrieve a Value
print("\n--- Step 3: Safely Retrieve a Value ---")
print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

// MARK: - Step 4 â€“ Use Optional Binding
print("\n--- Step 4: Use Optional Binding ---")
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// MARK: - Step 5 â€“ Add and Update Values
print("\n--- Step 5: Add and Update Values ---")
// Add a student
marks["Sanduni"] = 90
// Update a student
marks["Amal"] = 75
// Remove a student
marks["Ruwan"] = nil
print(marks)

// MARK: - Activity 3 â€“ Phone Book
print("\n--- Activity 3: Phone Book ---")
// Create dictionary containing Name -> Phone Number with at least 4 contacts
var phoneBook: [String: String] = [
    "Amal": "077-1234567",
    "Nimali": "071-2345678",
    "Ruwan": "075-3456789",
    "Kamal": "078-4567890"
]
print("Initial Phone Book:", phoneBook)

// 1. Add a new contact
phoneBook["Sanduni"] = "072-9876543"
print("\n1. Added Sanduni:", phoneBook)

// 2. Update one phone number
phoneBook["Amal"] = "077-9999999"
print("2. Updated Amal's number:", phoneBook)

// 3. Remove one contact
phoneBook["Ruwan"] = nil
print("3. Removed Ruwan:", phoneBook)

// 4. Search for a contact using if let
print("\n4. Search for existing contact ('Nimali'):")
let searchExisting = "Nimali"
if let phoneNumber = phoneBook[searchExisting] {
    print("\(searchExisting)'s Phone Number: \(phoneNumber)")
} else {
    print("Contact not found")
}

// 5. Display "Contact not found" if the key does not exist
print("\n5. Search for non-existent contact ('Kasun'):")
let searchNonExistent = "Kasun"
if let phoneNumber = phoneBook[searchNonExistent] {
    print("\(searchNonExistent)'s Phone Number: \(phoneNumber)")
} else {
    print("Contact not found")
}

