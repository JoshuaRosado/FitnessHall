//
//  HomeView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/10/25.
//

import SwiftData
import SwiftUI


struct HomeView: View {
    
    //Property source. Model Context
    @Environment(\.modelContext) var modelContext

    @Query(sort: \Workout.rating, order: .reverse )var workouts: [Workout]
    
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(workouts){ workout in
                    NavigationLink(value: workout){
                        HStack{
                            // Emoji View
                            
                            Text(workout.name)
                            
                            Text("Muscle: \(workout.muscle)")
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
