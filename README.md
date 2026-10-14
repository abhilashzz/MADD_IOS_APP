# MADD iOS Practicals - SE4041

**Student Name:** Abhilash KATW  
**Student ID:** IT22081698  
**Module:** SE4041 - Mobile Application Development (iOS & watchOS)

---

## Repository Structure

```
.
├── IT22081698_ios_practical4/
│   ├── MarksApp/
│   │   ├── Assets.xcassets/
│   │   ├── ContentView.swift
│   │   ├── MarksAppApp.swift
│   │   ├── Student.swift
│   │   ├── StudentDetailView.swift
│   │   └── Screenshots/
│   ├── MarksApp.xcodeproj/
│   │   ├── project.pbxproj
│   │   ├── project.xcworkspace/
│   │   └── xcshareddata/
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
│       ├── project.pbxproj
│       ├── project.xcworkspace/
│       └── xcshareddata/
│
├── .gitignore
└── README.md
```

---

## Projects Overview

### Practical 4: MarksApp (`IT22081698_ios_practical4`)
- **Platform:** iOS (SwiftUI)
- **Bundle Identifier:** `IT22081698.MarksApp`
- **Features:**
  - Add students with name and mark (0 - 100 validation).
  - Calculates pass/fail status (Pass mark >= 50).
  - Calculates letter grades (A, A-, B+, B, B-, C+, C, C-, F).
  - Navigation stack to view detailed student profile and grade breakdown.
  - Live statistics displaying passed count and total students.

### Practical 5: QuickTasks (`IT22081698_ios_practical5`)
- **Platform:** watchOS (SwiftUI Apple Watch App)
- **Bundle Identifier:** `IT22081698.QuickTasks` / `IT22081698.QuickTasks.watchkitapp`
- **Features:**
  - Apple Watch task tracking interface with progress bar and completion percentage.
  - Interactive task toggle button (Completed / Pending).
  - Detailed task view displaying status icon, task title, and completion state.
