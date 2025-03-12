//
//  DetailView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/12/25.
//
import SwiftData
import SwiftUI

struct DetailView: View {
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    let workout: Workout
    
    var body: some View {
        ScrollView{
            ZStack{
                Image(workout.muscle)
                    .resizable()
                    .scaledToFit()
            }
        }
        
    }
}

//#Preview {
//    DetailView()
//}
