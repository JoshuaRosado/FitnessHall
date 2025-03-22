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
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(workouts){ workout in
                    NavigationLink(value: workout){
                        HStack(spacing: 50){
                            ZStack{
                                
                                Circle()
                                    .fill(.gray.opacity(0.2))
                                    .shadow(color: .black.opacity(0.5), radius: 10, x: 15, y: 15)
                                
                                    .frame(width: 50)
                                
                                EmojiRatingView(rating: workout.rating)
                                
                            }
                            
                            
          
                            VStack{
                                Text(workout.muscle)
                                    .fontWeight(.black)
                                
                                Text(workout.name)
                            }
                            .frame(minWidth:200, alignment: .center)
                            .border(Color.red)
                            
                            
                        }
                        
                        
                        
                    }
                    
                }
                .onDelete(perform: removeWorkout)
            }
            .navigationTitle("FitnessHall")
            .navigationDestination(for: Workout.self){ workout in
                
                DetailView(workout:workout)
            }
            .toolbar{
                
                ToolbarItem(placement:.topBarLeading){
                    EditButton()
                }
                
                ToolbarItem(placement:.topBarTrailing){
                    Button("Add Workout", systemImage: "plus"){
                        showingAddScreen.toggle()
                    }
                }
            }
            .sheet(isPresented:$showingAddScreen){
                AddingWorkout()
            }
        }
        
    }
    func removeWorkout(at offsets: IndexSet){
        for offset in offsets {
            // find workout in our query
            let workout = workouts[offset]
            // delete workout from our model
            modelContext.delete(workout)
            
        }
    }
}

#Preview {
    HomeView()
}
