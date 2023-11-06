//
//  ExplicitAnimationView.swift
//  Animations
//
//  Created by Dillon Teakell on 11/3/23.
//

import SwiftUI

struct ExplicitAnimationView: View {
    
    @State private var animationAmount = 0.0
    var body: some View {
        Button ("Tap Me!") {
            // Scale up the button by a quarter
            withAnimation {
                animationAmount += 180
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
    ExplicitAnimationView()
}
