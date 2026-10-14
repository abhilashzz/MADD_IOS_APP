//
//  FinalChallenge.swift
//  SE4041 - Mobile Application Design & Development
//  Practical 03 – Functions, Enums, Structs & Classes in Swift
//  Final Practical Task: Student Management System
//
//  Student Name: Abhilash K A T W
//  Student ID:   IT22081698
//

import Foundation

print("==================================================")
print("     STUDENT MANAGEMENT SYSTEM - SE4041")
print("==================================================\n")

// =========================================================================
// CONFIRMED REQUIREMENTS (PARTS A - I)
// =========================================================================

// -------------------------------------------------------------------------
// PART A: GRADE ENUM WITH RAW VALUES
// -------------------------------------------------------------------------
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// -------------------------------------------------------------------------
// PART B, C, & D: STUDENT STRUCT WITH COMPUTED PROPERTY & METHODS
// -------------------------------------------------------------------------
struct Student {
    // Part B: Stored properties
    var studentID: String
    var name: String
    var mark: Int
    
    // Part C: Computed grade property using exact final-challenge bands
    var grade: Grade {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .bPlus
        case 65..<70:
            return .b
        case 60..<65:
            return .bMinus
        case 55..<60:
            return .cPlus
        case 45..<55:
            return .c
        case 40..<45:
            return .cMinus
        default:
            return .f
        }
    }
    
    // Part D: Display details method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("------------------------------")
    }
}

// -------------------------------------------------------------------------
// PART E: CREATE AT LEAST FIVE STUDENTS (Sample Dataset)
// -------------------------------------------------------------------------
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

// -------------------------------------------------------------------------
// PART F: DISPLAY ALL STUDENTS
// -------------------------------------------------------------------------
print("--- All Registered Students ---")
for student in students {
    student.displayDetails()
}
print()

// -------------------------------------------------------------------------
// PART G: USE filter FOR PASSED STUDENTS (mark >= 50)
// Note: Nimali receives grade 'C' (45 marks) but is excluded from passed
// students because 45 < 50. This confirms adherence to stated requirements.
// -------------------------------------------------------------------------
print("--- Passed Students (Mark >= 50) ---")
let passedStudents = students.filter { $0.mark >= 50 }
let passedNames = passedStudents.map { $0.name }
print("Passed Student Count: \(passedStudents.count)")
print("Passed Student Names: \(passedNames)\n")

// -------------------------------------------------------------------------
// PART H: USE map TO EXTRACT ALL STUDENT NAMES
// -------------------------------------------------------------------------
print("--- Extracted Student Names (map) ---")
let studentNames = students.map { $0.name }
print("All Student Names: \(studentNames)\n")

// -------------------------------------------------------------------------
// PART I: USE reduce FOR TOTAL MARKS AND CALCULATE CLASS AVERAGE
// -------------------------------------------------------------------------
print("--- Class Statistics (reduce) ---")
let totalMarks = students.map { $0.mark }.reduce(0, +)
let classAverage = Double(totalMarks) / Double(students.count)

print("Total Marks: \(totalMarks)")
print(String(format: "Class Average: %.1f", classAverage))
print()


// =========================================================================
// OPTIONAL PROVISIONAL EXTENSIONS (SECTION 22)
// NOTE: These extensions are provisional practice additions from Section 22
// and are not verified lecturer submission requirements.
// =========================================================================
print("==================================================")
print("     PROVISIONAL EXTENSIONS (OPTIONAL)")
print("==================================================\n")

// 1. Optional Name and Mark Validation with guard
func validateAndCreateStudent(id: String, name: String?, mark: Int?) -> Student? {
    guard let validName = name, !validName.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("[Validation Error] Student name is missing or empty.")
        return nil
    }
    
    guard let validMark = mark, (0...100).contains(validMark) else {
        print("[Validation Error] Mark must be an integer between 0 and 100.")
        return nil
    }
    
    return Student(studentID: id, name: validName, mark: validMark)
}

print("--- 1. Optional Input Validation with guard ---")
if let validStudent = validateAndCreateStudent(id: "IT006", name: "Dilshan", mark: 84) {
    print("Successfully validated student: \(validStudent.name), Grade: \(validStudent.grade.rawValue)")
}
let _ = validateAndCreateStudent(id: "IT007", name: nil, mark: 55)
let _ = validateAndCreateStudent(id: "IT008", name: "InvalidMark", mark: 150)
print()

// 2. Safe Tuple Summary Function
func summarizeClassPerformance(of studentList: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    guard !studentList.isEmpty else {
        return nil
    }
    let marks = studentList.map { $0.mark }
    let total = marks.reduce(0, +)
    let minMark = marks.min() ?? 0
    let maxMark = marks.max() ?? 0
    let avg = Double(total) / Double(studentList.count)
    return (minimum: minMark, maximum: maxMark, average: avg)
}

print("--- 2. Safe Tuple Performance Summary ---")
if let summary = summarizeClassPerformance(of: students) {
    print("Class Minimum: \(summary.minimum)")
    print("Class Maximum: \(summary.maximum)")
    print(String(format: "Class Average: %.1f", summary.average))
}
print()

// 3. Struct Copy vs Class Reference Demonstration
print("--- 3. Struct Copy vs Class Reference Demonstration ---")

// Struct copy test
var originalStudent = Student(studentID: "IT100", name: "Original", mark: 50)
var copiedStudent = originalStudent
copiedStudent.name = "Modified Copy"
print("Struct original name: \(originalStudent.name) (unchanged)")
print("Struct copied name:   \(copiedStudent.name) (independent copy)")

// Class reference test
class StudentTracker {
    var activeCount = 0
}
let tracker1 = StudentTracker()
let tracker2 = tracker1
tracker2.activeCount = 42
print("Class tracker1 count: \(tracker1.activeCount) (shared reference)")
print("Class tracker2 count: \(tracker2.activeCount) (shared reference)")
print("==================================================")
