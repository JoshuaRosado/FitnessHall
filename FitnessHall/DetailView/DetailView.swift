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
                
                // Weight and muscle image row
                HStack{
                    IntDisplayView(number: workout.weight, description: "Lbs", color: .white)
                    
                    ZStack{
                        ShapeSectionView(width: 170, height: 170, color: .white)
                        
                        Image(workout.muscle)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
                    }
                }
                
                
                
                
                // Sets and Reps Row
                HStack(spacing: 15){
                    IntDisplayView(number: workout.sets, description: "Sets", color: .white)
                    
                    IntDisplayView(number: workout.reps, description: "Reps", color: .white)
                    
                    
                }
                
                
                // Rating Row
                ZStack{
                    ShapeSectionView(width: 350, height: 100, color: .white)
                    VStack{
                        RatingView(rating: .constant (workout.rating))
                            .font(.largeTitle)
                            .padding(.bottom, 20)
                        Text("\(workout.rating) out of 5")
                        
                    }
                }
                
                // Review Row
                ZStack{
                    ShapeSectionView(width: 350 , height: 200, color: .white)
                    VStack{
                        Text("Review")
                            .padding(.top, -30)
                            .foregroundStyle(.secondary)
                            
                        
                        
                        Text(workout.review)
                            .padding()
                    }
                }
                ZStack{
                    ShapeSectionView(width: 350 , height: 25, color: .white)
                    Text(workout.date, format: .dateTime.month().day().hour().minute())
                        .foregroundStyle(.secondary)
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
