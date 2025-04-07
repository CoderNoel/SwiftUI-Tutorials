//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Noel Shaju on 4/4/2025.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
