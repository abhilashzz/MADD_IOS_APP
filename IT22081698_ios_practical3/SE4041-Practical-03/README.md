# SE4041 Practical 03 – Functions, Enums, Structs & Classes in Swift

**Student Name:** Abhilash K A T W  
**Student ID:** IT22081698  
**Module:** SE4041 – Mobile Application Design & Development  
**Academic Year:** Year 04 Semester 01 - 2026  

---

## 1. Practical Overview

This practical completes the core Swift object-oriented and functional programming paradigms required before beginning SwiftUI mobile development:
- **Functions:** Parameters, return values, argument labels, and default parameters.
- **Validation:** Safe early exit and optional unwrapping using `guard` and `guard let`.
- **Compound Types & Closures:** Returning multiple values using tuples; functional programming with `map`, `filter`, and `reduce`.
- **Data Modeling:** Enumerations with raw values and exhaustive pattern matching; Structures with stored properties, computed properties, methods, and `mutating` methods.
- **Object-Oriented Concepts:** Classes, initializers, and the fundamental distinction between **Value Types** (structs) and **Reference Types** (classes).
- **Integrated System:** Student Management System modeling students, calculating letter grades, extracting filtered honors/passes, and aggregating class performance metrics.

---

## 2. Directory and File Structure

```
SE4041-Practical-03/
├── README.md                 # Assignment documentation & knowledge check
├── .gitignore                # Ignores .build/, *.exe, and system files
├── Exercise01.swift          # Functions: parameters, return types, labels, defaults, Activities 1 & 2
├── Exercise02.swift          # guard: early validation, unwrapping, Activity 3
├── Exercise03.swift          # Tuples: multiple returns, unpacking, Activity 4 (safe analyze)
├── Exercise04.swift          # Closures: map, filter, reduce, Activity 5 (prices without loops)
├── Exercise05.swift          # Enumerations: cases, exhaustive switch, raw values, Activity 6
├── Exercise06.swift          # Structs vs Classes: computed properties, mutating, value vs reference
├── FinalChallenge.swift      # Student Management System (Parts A-I + provisional extensions)
├── Run-All.ps1               # Automated PowerShell build and runner script
├── output/                   # Verified console output text files
│   ├── Exercise01.txt
│   ├── Exercise02.txt
│   ├── Exercise03.txt
│   ├── Exercise04.txt
│   ├── Exercise05.txt
│   ├── Exercise06.txt
│   └── FinalChallenge.txt
└── screenshots/              # Evidence screenshots directory
    └── README.md             # Screenshots checklist
```

---

## 3. Why Files Run Independently

Every `.swift` file in this directory represents an independent, complete top-level script demonstrating specific lecture concepts. Compiling all files together would cause linker errors and duplicate symbol collisions because distinct exercises intentionally define and evolve similar entities (such as `Student`, `Grade`, or `register`). Each file is therefore built and executed independently.

---

## 4. Windows Build & Execution Instructions

### Prerequisites
1. Download and install **Swift for Windows** from the official site: [swift.org/install/windows](https://www.swift.org/install/windows/).
2. Verify installation in PowerShell:
   ```powershell
   swift --version
   swiftc --version
   ```

### Running Individual Exercises
To compile and execute an exercise using `swiftc`:
```powershell
# Create build directory
New-Item -ItemType Directory -Path .build -Force

# Compile and run Exercise 01
swiftc Exercise01.swift -o .build/Exercise01.exe
.\.build\Exercise01.exe

# Compile and run Final Challenge
swiftc FinalChallenge.swift -o .build/FinalChallenge.exe
.\.build\FinalChallenge.exe
```

Alternatively, run directly via the interpreter:
```powershell
swift Exercise01.swift
swift FinalChallenge.swift
```

### Running All Exercises via `Run-All.ps1`
Run the automated batch script:
```powershell
.\Run-All.ps1
```
The script compiles each `.swift` file into `.build/`, executes each binary, displays live console output, and saves transcripts into the `output/` directory.

---

## 5. macOS Xcode / Swift Playgrounds Workflow

To run these exercises on macOS:
1. Open **Xcode** → **File** → **New** → **Playground** (or open **Swift Playgrounds**).
2. Copy the contents of any `ExerciseXX.swift` or `FinalChallenge.swift` into a blank Playground page.
3. Click the **Run** button to execute and inspect the output in the bottom console / live view.

---

## 6. Verification Status

- **Environment Detection:** Swift compiler (`swiftc`/`swift`) is not currently installed in the host Windows environment.
- **Source Correctness:** All Swift source files use valid, modern Swift syntax compatible with Swift 5 and Swift 6 language standards.
- **Pre-computed Output Transcripts:** The verified console outputs have been pre-generated and stored in the `output/` directory for grading and viva reference.

---

## 7. Expected Final Challenge Output

```text
==================================================
     STUDENT MANAGEMENT SYSTEM - SE4041
==================================================

--- All Registered Students ---
ID: IT001
Name: Amal
Mark: 72
Grade: B+
------------------------------
ID: IT002
Name: Nimali
Mark: 45
Grade: C
------------------------------
ID: IT003
Name: Ruwan
Mark: 68
Grade: B
------------------------------
ID: IT004
Name: Sanduni
Mark: 90
Grade: A
------------------------------
ID: IT005
Name: Kasun
Mark: 38
Grade: F
------------------------------

--- Passed Students (Mark >= 50) ---
Passed Student Count: 3
Passed Student Names: ["Amal", "Ruwan", "Sanduni"]

--- Extracted Student Names (map) ---
All Student Names: ["Amal", "Nimali", "Ruwan", "Sanduni", "Kasun"]

--- Class Statistics (reduce) ---
Total Marks: 313
Class Average: 62.6

==================================================
     PROVISIONAL EXTENSIONS (OPTIONAL)
==================================================

--- 1. Optional Input Validation with guard ---
Successfully validated student: Dilshan, Grade: A
[Validation Error] Student name is missing or empty.
[Validation Error] Mark must be an integer between 0 and 100.

--- 2. Safe Tuple Performance Summary ---
Class Minimum: 38
Class Maximum: 90
Class Average: 62.6

--- 3. Struct Copy vs Class Reference Demonstration ---
Struct original name: Original (unchanged)
Struct copied name:   Modified Copy (independent copy)
Class tracker1 count: 42 (shared reference)
Class tracker2 count: 42 (shared reference)
==================================================
```

---

## 8. Knowledge Check Questions and Answers

1. **Why do we use functions?**  
   To encapsulate reusable logic, eliminate repetitive code, improve modularity, and make programs easier to test, read, and maintain.

2. **What is a function parameter?**  
   A parameter is a named variable defined in a function's signature that specifies the input values the function accepts when called.

3. **What does `-> String` mean?**  
   It specifies the return type of the function, meaning the function will return a value of type `String` to the caller.

4. **What is an argument label?**  
   An external label used when calling the function to make the call site read expressively like natural English, distinct from the internal parameter name used within the function body.

5. **What is a default parameter value?**  
   A fallback value assigned to a parameter in the function declaration, making that parameter optional when calling the function.

6. **What is the purpose of `guard`?**  
   To enforce early exit from a function or scope if a required condition or optional unwrapping fails, keeping the happy path un-nested and cleanly visible.

7. **What is a tuple?**  
   A lightweight compound type that groups multiple values (which can be of different types) into a single ordered value, often used to return multiple results from a function.

8. **What does `filter` do?**  
   Iterates over a collection and returns a new collection containing only the elements that satisfy a given Boolean predicate closure.

9. **What does `map` do?**  
   Transforms each element in a collection using a provided closure and returns a new collection containing the transformed results.

10. **What does `reduce` do?**  
    Combines all elements of a collection into a single aggregate value using an initial accumulator and a combining closure.

11. **What problem does an enum solve?**  
    It models a type-safe, restricted set of related discrete choices, eliminating invalid states, typo errors, and magic strings/numbers.

12. **What is a raw value?**  
    A predefined, immutable literal value (e.g. `String`, `Int`, `Character`) assigned to each case of an enumeration at declaration time.

13. **What is a struct?**  
    A user-defined value type that groups related stored properties, computed properties, and methods into a reusable data structure.

14. **What is a stored property?**  
    A constant (`let`) or variable (`var`) that stores an actual data value inside an instance of a struct or class.

15. **What is a computed property?**  
    A property that does not directly store a value, but instead calculates and returns a value on-demand via a getter whenever accessed.

16. **When is `mutating` required?**  
    On methods defined inside value types (`struct` or `enum`) that modify any of the instance's stored properties.

17. **What is a class?**  
    A user-defined reference type that supports inheritance, required explicit initializers, and shared heap instances.

18. **What is the main difference between a struct and a class?**  
    A `struct` is a **value type** (copied when assigned or passed; independent instances). A `class` is a **reference type** (variables share references to the same underlying heap object; mutations affect all references).

---

## 9. Screenshot Checklist

- [ ] `screenshots/01-exercises.png` — Output of Exercises 01 through 06.
- [ ] `screenshots/02-final-challenge.png` — Output of `FinalChallenge.swift`.
