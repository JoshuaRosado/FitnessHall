//
//  AddingWorkout.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/11/25.
//
import SwiftData
import SwiftUI

extension String {
    var isReallyEmpty : Bool {
        return self.trimmingCharacters(in: .whitespaces).isEmpty
    }
}

struct AddingWorkout: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: \Workout.rating, order: .reverse) var workouts: [Workout]
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var muscle = "Placeholder"
    @State private var weight = 0
    @State private var sets = 0
    @State private var reps = 0
    @State private var review = ""
    @State private var rating = 2
    @State private var date = Date.now
    
    
    // Add a custom NumberFormatter to display Placeholder for Integer TextField
    let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        formatter.zeroSymbol = ""
        return formatter
    } ()
    
    var validatingTextField: Bool {
        if name.isReallyEmpty || reps < 2 || sets == 0 ||  muscle == "Placeholder"{
            return false
        }
        return true
    }
    
    // muscles array for Picker
    let muscles = ["Traps", "Shoulders", "Back", "Chest", "Biceps", "Triceps", "Abs", "Forearms", "Quads", "Hamstring", "Calves", "Glutes"]
    
    var body: some View {
        NavigationStack{
            Form{
                
                Section("Workout Info"){
                    TextField("Workout name", text: $name)
                    TextField("How many sets", value: $sets, formatter: numberFormatter)
                        .keyboardType(.numbersAndPunctuation)
                    
                    TextField("How many repetitions", value:$reps,  formatter: numberFormatter)
                        .keyboardType(.numbersAndPunctuation)
                    
                    TextField("How much weight", value: $weight, formatter: numberFormatter)
                        .keyboardType(.numbersAndPunctuation)
                    
                    Picker("Muscle", selection: $muscle){
                        
                        if muscle == "Placeholder"{
                            Text("Select ...").tag("Placeholder")
                        }
                        ForEach(muscles, id: \.self){
                            Text($0)
                        }
                    }
                    
                    
                }
                
                Section("Share your experience"){
                    TextEditor(text: $review)
                    RatingView(rating: $rating)
                }
                
                Section{
                    
                    Button("Share") {
                        // new workout
                        let newWorkout = Workout(name: name, muscle: muscle, weight: weight, sets: sets, reps: reps, review: review, date: date, rating: rating)
                        // add New workout to model
                        modelContext.insert(newWorkout)
                        // dismiss view after sharing new workout
                        dismiss()
                        print(newWorkout.name)
                    }
                    
                }
                .disabled(!validatingTextField)
            }
            .navigationTitle("Add Workout")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
    }
}

//#Preview {
//    AddingWorkout()
//}
