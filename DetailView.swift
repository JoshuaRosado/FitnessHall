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
                        Rectangle()
                            .fill(.space.opacity(0.8))
                            .background(.thinMaterial)
                            .shadow(color: .black.opacity(0.2), radius: 2, x: 3, y: 3)
                        
                        Text(workout.name)
                            .font(.system(size: 40))
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }
                    .frame(height: 150)
                    
                    Text(workout.muscle)
                        .fontWeight(.black)
                        .padding(8)
                        .background(.ultraThinMaterial)
                        .clipShape(.capsule)
                        
                        
                    
                }
                    
                    
                
                
            }
        }
        
    }
}

//#Preview {
//    DetailView()
//}
