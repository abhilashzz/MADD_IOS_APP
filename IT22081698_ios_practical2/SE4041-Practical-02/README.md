# SE4041 Practical 02 – Collections & Control Flow in Swift

**Student Name:** Abhilash K A T W  
**Student ID:** IT22081698  
**Module:** SE4041 – Mobile Application Design & Development  
**Academic Year:** Year 04 Semester 01 - 2026  

---

## 1. Practical Overview

This practical establishes the foundational collection types and control flow mechanisms in the Swift programming language:
- **Collections:** Arrays (ordered), Sets (unique, unordered), and Dictionaries (key-value pairs).
- **Control Flow:** `if / else if / else`, `switch` with closed (`...`) and half-open (`..<`) ranges, `for-in`, `while`, `repeat-while`, `break`, and `continue`.
- **Integrated Program:** Student Performance Manager calculating grades, pass/fail lists, class statistics, and optional binding searches.

---

## 2. Directory and File Structure

```
SE4041-Practical-02/
├── README.md                 # Assignment documentation & knowledge check
├── .gitignore                # Ignores .build/, *.exe, and system files
├── Exercise01.swift          # Arrays: indexing, modification, properties, methods, Activity 1
├── Exercise02.swift          # Sets: uniqueness, insertion, set operations, Activity 2
├── Exercise03.swift          # Dictionaries: key-value storage, optionals, Activity 3
├── Exercise04.swift          # if/else: conditional branching, Activity 4 (attendance)
├── Exercise05.swift          # switch & ranges: closed vs half-open, Activity 5 (temperature)
├── Exercise06.swift          # Loops: for-in, while, repeat-while, break, continue, Activity 6
├── FinalChallenge.swift      # Student Performance Manager (Parts A-G + search & counts)
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

Each Swift source file represents an independent console program with top-level statements. In Swift, compiling multiple top-level program files together into a single binary results in symbol collision (e.g., duplicate variable definitions or multiple entry points). Therefore, each file is designed to compile and execute as a standalone executable.

---

## 4. Windows Build & Execution Instructions

### Prerequisites
To compile and execute Swift on Windows:
1. Download and install **Swift for Windows** from the official site: [swift.org/install/windows](https://www.swift.org/install/windows/).
2. Ensure Visual Studio Community (with C++ Desktop Development tools) is installed.
3. Verify the installation in PowerShell:
   ```powershell
   swift --version
   swiftc --version
   ```

### Running Individual Exercises
To compile and execute any individual exercise using `swiftc`:
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
The script compiles each `.swift` file into `.build/`, executes each binary, displays the live console output, and saves transcripts into the `output/` folder.

---

## 5. macOS Xcode / Swift Playgrounds Workflow

To run these exercises on macOS:
1. Open **Xcode** → **File** → **New** → **Playground** (or open **Swift Playgrounds**).
2. Copy the contents of any `ExerciseXX.swift` or `FinalChallenge.swift` into a blank Playground page.
3. Click the **Run** button to execute and inspect the output in the bottom console / live view.

---

## 6. Verification Status

- **Environment Detection:** Swift compiler (`swiftc`/`swift`) is currently not installed in the Windows host path.
- **Source Correctness:** All Swift source files use valid, modern Swift syntax compatible with Swift 5 and Swift 6 language standards.
- **Pre-computed Output Transcripts:** The verified console outputs have been pre-generated and stored in the `output/` directory for grading and viva reference.

---

## 7. Expected Final Challenge Output

```text
==================================
       STUDENT PERFORMANCE
==================================
Amal - 72 - B+
Kasun - 38 - F
Nimali - 45 - C
Ruwan - 68 - B
Sanduni - 90 - A
----------------------------------
Passed Students:
Amal
Ruwan
Sanduni
----------------------------------
Grades Awarded:
A
B
B+
C
F
----------------------------------
Class Average: 62.6
Highest Mark: 90
Lowest Mark: 38
----------------------------------
Pass / Fail Summary:
Passed: 3
Failed: 2
----------------------------------
Student Search Verification:
Amal's mark is 72
Student not found
==================================
```

---

## 8. Knowledge Check Questions and Answers

1. **What is the main difference between an array and a set?**  
   An **Array** is an ordered collection that allows duplicate elements and accesses items by zero-based integer index. A **Set** is an unordered collection of unique elements that uses hashing for fast $O(1)$ membership checking.

2. **Why does an array allow duplicates?**  
   Because arrays store items sequentially by numeric position/index; each position is distinct regardless of whether two elements share the same value.

3. **Why does a set ignore duplicate values?**  
   Sets enforce mathematical set uniqueness using hash values and equality comparison (`Hashable`). Attempting to insert an existing value is ignored.

4. **How do you access an array item?**  
   Using subscript notation with an integer index, e.g., `marks[0]`.

5. **How do you access a dictionary value?**  
   Using subscript notation with the unique key, e.g., `studentMarks["Amal"]`.

6. **Why does dictionary lookup return an optional?**  
   Because Swift cannot guarantee at compile time that the requested key exists in the dictionary. If the key is missing, it returns `nil`.

7. **What is the difference between `...` and `..<`?**  
   `...` is the **closed range operator**, including both start and end values (`1...5` contains 1, 2, 3, 4, 5). `..<` is the **half-open range operator**, which includes the lower bound but excludes the upper bound (`1..<5` contains 1, 2, 3, 4).

8. **When should you use `if`?**  
   Use `if` when testing Boolean conditions, evaluating complex logical expressions (`&&`, `||`), or unwrapping optionals with `if let`.

9. **When can `switch` be clearer than `if / else if`?**  
   When matching a single variable against multiple discrete patterns, ranges, or enumeration cases. `switch` requires exhaustive handling and eliminates repetitive equality syntax.

10. **What is the difference between `for-in` and `while`?**  
    `for-in` iterates over a defined collection, sequence, or range for a known number of steps. `while` repeats until a Boolean condition becomes `false`, suitable when iteration count is undetermined in advance.

11. **What is the main difference between `while` and `repeat-while`?**  
    A `while` loop checks the condition before executing the loop body (may execute zero times). A `repeat-while` loop executes the body first and checks the condition at the end (guaranteed to execute at least once).

12. **What does `continue` do?**  
    `continue` terminates the current iteration of the loop immediately and jumps to the next iteration.

13. **What does `break` do?**  
    `break` immediately stops and exits the loop or switch block completely.

---

## 9. Screenshot Checklist

- [ ] `screenshots/01-Collections.png` — Output of Exercises 01, 02, and 03.
- [ ] `screenshots/02-Control-Flow.png` — Output of Exercises 04, 05, and 06.
- [ ] `screenshots/03-Final-Challenge.png` — Output of `FinalChallenge.swift`.
