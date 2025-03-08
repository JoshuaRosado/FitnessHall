//
//  IntroView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/7/25.
//

import SwiftUI

struct IntroView: View {
    @State private var onAppear = false
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
        // on Appear effect tracking it with (onAppear : Bool)
        .scaleEffect(onAppear ? 1: 1.5)
        .opacity(onAppear ? 1.0: 0.0)
        .onAppear{
            withAnimation(.easeInOut(duration: 1.0)){
                onAppear = true
            }
        }
       
    }
}

#Preview {
    IntroView()
}
