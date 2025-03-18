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
                            .shadow(color: .gray.opacity(0.4), radius: 10, x: 10, y: 10)
                        
                        
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
                        .clipShape(.capsule)
                        .offset(x: -10 , y: -10)
                        .foregroundStyle(.secondary) 
    
                }
                
                HStack{
                    IntDisplayView(number: workout.reps, description: "Reps", color: .white)
                    
                    IntDisplayView(number: workout.sets, description: "Sets", color: .white)
                    
                    
                }
  
            }
            
            .padding(20)
        }
        .background(Color.cream)
        
    }
}

//#Preview {
//    DetailView()
//}
