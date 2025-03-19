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
            
            ShapeSectionView(width: CGFloat(170), height: CGFloat(170), color: .white)
            
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
