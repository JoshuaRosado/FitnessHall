//
//  ContentView.swift
//  FitnessHall
//
//  Created by Joshua Rosado Olivencia on 3/7/25.
//

import SwiftUI

struct ContentView: View {
    @State private var introViewVisible = true
    @State private var timeRemaining = 5
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
                .opacity(0)

            if timeRemaining > 0 {
                IntroView()
            } else{
                Text("The end")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
