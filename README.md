# MADD iOS Practicals - SE4041

**Student Name:** Abhilash K A T W  
**Student ID:** IT22081698  
**Module:** SE4041 – Mobile Application Design & Development  
**Academic Year:** Year 04 Semester 01 - 2026  

---

## Repository Structure

```
.
├── IT22081698_ios_practical2/
│   └── SE4041-Practical-02/
│       ├── Exercise01.swift         # Arrays
│       ├── Exercise02.swift         # Sets
│       ├── Exercise03.swift         # Dictionaries
│       ├── Exercise04.swift         # if / else if / else
│       ├── Exercise05.swift         # switch & Ranges
│       ├── Exercise06.swift         # Loops & Control Flow
│       ├── FinalChallenge.swift     # Student Performance Manager
│       ├── README.md                # Documentation & Exercise Walkthrough
│       └── screenshots/             # Output and execution verification screenshots
│           ├── 01-Collections.png
│           ├── 02-Control-Flow.png
│           └── 03-Final-Challenge.png
│
├── IT22081698_ios_practical3/
│   └── SE4041-Practical-03/
│       ├── Exercise01.swift         # Functions
│       ├── Exercise02.swift         # guard statement
│       ├── Exercise03.swift         # Tuples
│       ├── Exercise04.swift         # Closures (map, filter, reduce)
│       ├── Exercise05.swift         # Enumerations
│       ├── Exercise06.swift         # Structs vs Classes
│       ├── FinalChallenge.swift     # Student Management System
│       ├── README.md                # Documentation & Exercise Walkthrough
│       └── screenshots/             # Output and execution verification screenshots
│           ├── 01-exercises.png
│           └── 02-final-challenge.png
│
├── IT22081698_ios_practical4/
│   ├── MarksApp/
│   │   ├── Assets.xcassets/
│   │   ├── ContentView.swift
│   │   ├── MarksAppApp.swift
│   │   ├── Student.swift
│   │   ├── StudentDetailView.swift
│   │   └── Screenshots/
│   ├── MarksApp.xcodeproj/
│   └── Screenshots/
│       ├── 01-Student-List.png
│       └── 02-Student-Details.png
│
├── IT22081698_ios_practical5/
│   ├── QuickTasks Watch App/
│   │   ├── Assets.xcassets/
│   │   ├── ContentView.swift
│   │   ├── QuickTasksApp.swift
│   │   ├── TaskDetailView.swift
│   │   ├── TaskItem.swift
│   │   └── Screenshots/
│   │       ├── 01-Main-Screen.png
│   │       ├── 02-Completed-Tasks.png
│   │       └── 03-Task-Detail.png
│   └── QuickTasks.xcodeproj/
│
├── .gitignore
└── README.md
```

---

## Practicals Overview

### Practical 02: Collections & Control Flow (`IT22081698_ios_practical2/SE4041-Practical-02`)
- **Type:** Swift Console Programs / Xcode Playground
- **Topics Covered:** Arrays, Sets, Dictionaries, Optionals, Conditionals (`if / else`), Pattern Matching (`switch`, ranges), Loops (`for-in`, `while`, `repeat-while`, `break`, `continue`).
- **Final Challenge:** Student Performance Manager calculating student marks, letter grades (A to F), pass/fail filter, class average (62.6), min/max marks, and student search.

### Practical 03: Functions, Enums, Structs & Classes (`IT22081698_ios_practical3/SE4041-Practical-03`)
- **Type:** Swift Console Programs / Xcode Playground
- **Topics Covered:** Functions, Parameters, Return types, Argument labels, Default values, `guard` validation, Tuples, Closures (`map`, `filter`, `reduce`), Enumerations with raw values, Structs (stored & computed properties, mutating methods), Classes, Value vs Reference semantics.
- **Final Challenge:** Student Management System modeling students, computing letter grades, filtering passed students, mapping student names, and aggregating class metrics.

### Practical 04: MarksApp (`IT22081698_ios_practical4`)
- **Platform:** iOS (SwiftUI)
- **Bundle Identifier:** `IT22081698.MarksApp`
- **Features:** Add students with name and mark (0 - 100 validation), pass/fail status, letter grades (A, A-, B+, B, B-, C+, C, C-, F), Navigation stack for student profile, live summary statistics.

### Practical 05: QuickTasks (`IT22081698_ios_practical5`)
- **Platform:** watchOS (SwiftUI Apple Watch App)
- **Bundle Identifier:** `IT22081698.QuickTasks` / `IT22081698.QuickTasks.watchkitapp`
- **Features:** Apple Watch task tracking interface, interactive progress bar, toggle completion (Completed / Pending), detailed task inspection view.
