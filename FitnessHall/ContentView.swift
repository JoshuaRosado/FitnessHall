//
//  ContentView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/7/25.
//
import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query(sort: \Workout.rating, order:.reverse) var workouts: [Workout]

    var body: some View {
        OpeningView() 
       
    }
}

#Preview {
    ContentView()
}
