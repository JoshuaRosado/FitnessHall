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
                            .shadow(color: .gray.opacity(0.1), radius: 2, x: 4, y: 4)
                        
                        
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
                        .clipShape(.capsule(style: .continuous))
                        .offset(x: -10 , y: -10)
                        .foregroundStyle(.secondary) 
    
                }
                
                // Reps and Sets Row
                HStack(spacing: 15){
                    IntDisplayView(number: workout.reps, description: "Reps", color: .white)
                        
                    
                    IntDisplayView(number: workout.sets, description: "Sets", color: .white)
                    
                    
                }
                
                // Rating Row
                ZStack{
                    ShapeSectionView(width: 350, height: 100, color: .white)
                    RatingView(rating: .constant (workout.rating))
                        .font(.largeTitle)
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
