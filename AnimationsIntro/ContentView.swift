//
//  ContentView.swift
//  AnimationsIntro
//
//  Created by Jason Cox on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
//        Button("Tap Me") {
////            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(.circle)
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2-animationAmount)
//                .animation(
//                    .easeInOut(duration: 0.75)
//                    .repeatForever(autoreverses: false),
//                    value: animationAmount
//                )
//            )
//        .onAppear {
//            animationAmount = 2
//        }
        print(animationAmount)
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 0.75)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
        
}

#Preview {
    ContentView()
}
