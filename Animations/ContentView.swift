//
//  ContentView.swift
//  Animations
//
//  Created by Hakan Hatipoğlu on 25.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount), axis: (x: 0, y: 1, z: 0)
        )
    }
}

#Preview {
    ContentView()
}
