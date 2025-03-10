//
//  Workout.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/10/25.
//

import Foundation
import SwiftData


@Model
class Workout {
    var name: String
    var muscle: String
    var sets: Int
    var reps: Int
    var review: String
    var date: Date
    var rating: Int
    
    init(name: String, muscle: String, sets: Int, reps: Int, review: String, date: Date, rating: Int) {
        self.name = name
        self.muscle = muscle
        self.sets = sets
        self.reps = reps
        self.review = review
        self.date = date
        self.rating = rating
    }
}


