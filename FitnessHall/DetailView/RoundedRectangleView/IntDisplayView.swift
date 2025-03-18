//
//  RoundedRectangleView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/18/25.
//

import SwiftUI

struct IntDisplayView: View {
    let number: Int
    let description: String
    let color : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .circular).fill(color)
                .frame(width: 200, height: 200)
                .shadow(color: .gray.opacity(0.4), radius: 10, x: 10, y: 10)
            
            VStack{
            
                Text(number, format: .number)
                    .font(.system(size: 45, weight: .semibold, design: .rounded))
                    .padding()
                Text(description)
            }
        }
    }
}

#Preview {
    IntDisplayView(number: 5, description: "Reps", color: .white)
}
