//
//  ShapeSectionView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/19/25.
//

import SwiftUI

struct ShapeSectionView: View {
    
    let width: CGFloat
    let height: CGFloat
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .circular).fill(color)
            .frame(width: width, height:height)
            .shadow(color: .gray.opacity(0.1), radius: 2, x: 4, y: 4)
    }
}

#Preview {
    ShapeSectionView(width: CGFloat(170), height: CGFloat(170), color: .white)
}
