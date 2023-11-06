//
//  BouncyAnimationView.swift
//  Animations
//
//  Created by Dillon Teakell on 11/3/23.
//

import SwiftUI

struct BouncyAnimationView: View {
    @State private var animationAmount = 2.0
    var body: some View {
        Button ("Start") {
            animationAmount += 0.5
        }
        .padding()
        .background(.mint)
        .foregroundStyle(.background)
        .clipShape(.capsule)
        .scaleEffect(animationAmount)
        .animation(.spring(duration: 0.75, bounce: 0.95), value: animationAmount)
        
    }
}

#Preview {
    BouncyAnimationView()
}
