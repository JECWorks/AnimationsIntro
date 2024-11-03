//
//  ContentView.swift
//  AnimationsIntro
//
//  Created by Jason Cox on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }        }
        .padding(50)
        .background(.green)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0))
    }
        
}

#Preview {
    ContentView()
}
