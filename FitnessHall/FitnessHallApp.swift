//
//  FitnessHallApp.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/7/25.
//
import SwiftData
import SwiftUI

@main
struct FitnessHallApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Workout.self)
    }
}
