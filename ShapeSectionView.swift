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
            .shadow(color: .gray.opacity(0.2), radius: 2, x: 5, y: 5)
    }
}

#Preview {
    ShapeSectionView(width: CGFloat(170), height: CGFloat(170), color: .white)
}
