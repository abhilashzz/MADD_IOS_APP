
//
//  StudentDetailView.swift
//  MarksApp
//
//  Created by Abhilash KATW (IT22081698) on 2026-10-11.
//

import SwiftUI

struct StudentDetailView: View {

    let student: Student

    var body: some View {

        VStack(spacing: 20) {

            // Student Icon

            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))
                .foregroundStyle(.blue)

            // Student Name

            Text(student.name)
                .font(.largeTitle)
                .bold()

            // Student Mark

            Text("Mark: \(student.mark)")
                .font(.title2)

            // Pass or Fail

            Text(student.passed ? "PASS" : "FAIL")
                .font(.title)
                .bold()
                .foregroundStyle(
                    student.passed ? .green : .red
                )

            // Optional Grade

            Text("Grade: \(student.grade)")
                .font(.title3)
                .foregroundStyle(.secondary)

            Spacer()

        }
        .frame(maxWidth: .infinity)
        .padding()
        .navigationTitle("Student Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        StudentDetailView(
            student: Student(name: "Amal", mark: 72)
        )
    }
}
