
//
//  ContentView.swift
//  MarksApp
//
//  Created by Abhilash KATW (IT22081698) on 2026-10-11.
//

import SwiftUI

struct ContentView: View {

    // MARK: - State Variables

    @State private var students: [Student] = []

    @State private var studentName = ""

    @State private var markText = ""

    @State private var errorMessage = ""

    // MARK: - Passed Students Count

    private var passedCount: Int {
        students.filter { $0.passed }.count
    }

    // MARK: - Main Screen

    var body: some View {

        NavigationStack {

            VStack(spacing: 14) {

                // MARK: Student Input Section

                VStack(alignment: .leading, spacing: 12) {

                    Text("Add Student")
                        .font(.headline)

                    // Student Name

                    TextField(
                        "Student Name",
                        text: $studentName
                    )
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.words)

                    // Student Mark

                    TextField(
                        "Mark (0 - 100)",
                        text: $markText
                    )
                    .keyboardType(.numberPad)
                    .textFieldStyle(.roundedBorder)

                    // Validation Error Message

                    if !errorMessage.isEmpty {

                        Text(errorMessage)
                            .font(.caption)
                            .foregroundStyle(.red)

                    }

                    // Add Student Button

                    Button {

                        addStudent()

                    } label: {

                        Label(
                            "Add Student",
                            systemImage: "plus.circle.fill"
                        )
                        .frame(maxWidth: .infinity)

                    }
                    .buttonStyle(.borderedProminent)

                }
                .padding()
                .background(
                    Color(.secondarySystemBackground)
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 14)
                )
                .padding(.horizontal)

                // MARK: Student Statistics

                HStack {

                    Label(
                        "Passed Students: \(passedCount)",
                        systemImage: "checkmark.seal.fill"
                    )
                    .foregroundStyle(.green)

                    Spacer()

                    Text("Total: \(students.count)")
                        .foregroundStyle(.secondary)

                }
                .font(.subheadline)
                .padding(.horizontal)

                // MARK: Student List

                if students.isEmpty {

                    // Empty List Message

                    VStack(spacing: 12) {

                        Spacer()

                        Image(systemName: "person.3.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.secondary)

                        Text("No Students Yet")
                            .font(.headline)

                        Text("Add a student to see results here.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)

                        Spacer()

                    }
                    .frame(maxWidth: .infinity)

                } else {

                    // Display All Students

                    List(students) { student in

                        NavigationLink {

                            StudentDetailView(
                                student: student
                            )

                        } label: {

                            HStack {

                                VStack(
                                    alignment: .leading,
                                    spacing: 4
                                ) {

                                    Text(student.name)
                                        .font(.headline)

                                    Text(
                                        student.passed ? "Pass" : "Fail"
                                    )
                                    .font(.caption)
                                    .foregroundStyle(
                                        student.passed ? .green : .red
                                    )

                                }

                                Spacer()

                                Text("\(student.mark)")
                                    .font(.headline)
                                    .foregroundStyle(
                                        student.passed ? .green : .red
                                    )

                            }
                        }
                    }
                    .listStyle(.plain)

                }

            }
            .navigationTitle("SE4041 Marks")

        }
    }

    // MARK: - Add Student Function

    private func addStudent() {

        // Remove whitespace from name

        let name = studentName.trimmingCharacters(
            in: .whitespacesAndNewlines
        )

        // Remove whitespace from mark text

        let inputMark = markText.trimmingCharacters(
            in: .whitespacesAndNewlines
        )

        // Validate Student Name

        guard !name.isEmpty else {

            errorMessage = "Student name cannot be empty."

            return
        }

        // Validate Student Mark

        guard let mark = Int(inputMark),
              mark >= 0 && mark <= 100 else {

            errorMessage = "Enter a whole-number mark from 0 to 100."

            return
        }

        // Create Student Object

        let newStudent = Student(
            name: name,
            mark: mark
        )

        // Add New Student to Array

        students.append(newStudent)

        // Clear Input Fields

        studentName = ""
        markText = ""
        errorMessage = ""

    }
}

// MARK: - SwiftUI Preview

#Preview {
    ContentView()
}
