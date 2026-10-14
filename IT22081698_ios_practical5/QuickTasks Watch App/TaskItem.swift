
//
//  TaskItem.swift
//  QuickTasks Watch App
//
//  Created by Abhilash KATW (IT22081698) on 2026-10-11.
//

import Foundation

struct TaskItem: Identifiable {

    let id = UUID()

    var title: String
    var completed: Bool

}
