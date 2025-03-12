//
//  OpeningView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/8/25.
//


import SwiftUI

struct OpeningView: View {
    @State private var introViewVisible = true
    @State private var timeRemaining = 5
    // Timer for IntroView to appear for = timeRemaining
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 { // if timer is greater than 0
                        timeRemaining -= 1 // subtract 1
                    }
                    else if timeRemaining == 0 { // if time equals 0
                        withAnimation{
                            // make view disappear with animation using this Bool
                            introViewVisible = false
                        }
                    }
                }
                .opacity(0) // no need for the timeRemaining Text

            if introViewVisible {
                IntroView()
            } else {
                HomeView()
            }
            
        }
    }
}

#Preview {
    OpeningView()
}
