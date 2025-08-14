//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by suva on 8/6/25.
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
