//
//  ContentView.swift
//  Animations
//
//  Created by Dillon Teakell on 11/2/23.
//

import SwiftUI

struct BasicAnimationView: View {
    
    // Button's animation scale
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button ("Tap Me!") {
            // Scale up the button by a quarter
            animationAmount += 0.5
        }
            .padding()
            .background(.red)
            .foregroundStyle(.secondary)
            .clipShape(.capsule)
            .scaleEffect(animationAmount)
            .animation(.default, value: animationAmount)
    }
}

#Preview {
    BasicAnimationView()
}
