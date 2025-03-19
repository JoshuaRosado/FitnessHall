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
            VStack{
                ZStack(alignment: .bottomTrailing){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .shadow(color: .gray.opacity(0.2), radius: 2, x: 5, y: 5)
                        
                        
                        Text(workout.name)
                            .font(.system(size: 30))
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            
                    }
                    
                    .frame(height: 175)
                    
                    Text(workout.muscle)
                        .fontWeight(.black)
                        .padding(10)
                        .background(.thinMaterial)
                        .clipShape(.containerRelative)
                        .offset(x: -10 , y: -10)
                        .foregroundStyle(.secondary) 
    
                }
                
                HStack(spacing: 15){
                    IntDisplayView(number: workout.reps, description: "Reps", color: .white)
                        
                    
                    IntDisplayView(number: workout.sets, description: "Sets", color: .white)
                    
                    
                }
  
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 40)
        }
        .background(Color.cream)
        
    }
}

//#Preview {
//    DetailView()
//}
