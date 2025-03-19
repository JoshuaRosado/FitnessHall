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
                .frame(width: 170, height:170)
                .shadow(color: .gray.opacity(0.2), radius: 2, x: 5, y: 5)
            
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
