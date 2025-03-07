//
//  IntroView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/7/25.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack{
            (Color("Space"))
                .ignoresSafeArea()
            VStack(spacing: 10){
                Text("Welcome to ")
                    .font(.subheadline)
                
                Text("Fitness Hall")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                Image(systemName: "figure.gymnastics.circle.fill")
                    .font(.largeTitle)
                
            }
            .foregroundStyle(.white)
            
        }
       
    }
}

#Preview {
    IntroView()
}
