//
//  BindingView.swift
//  Animations
//
//  Created by Dillon Teakell on 11/3/23.
//

import SwiftUI

struct BindingView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        // Binding Animations
        VStack {
            Stepper("Scale: \(animationAmount.formatted())", value: $animationAmount.animation(), in: 1...4, step: 1)
                .padding()
            
            Spacer()
            
            Button ("Tap Here") {
                animationAmount += 1
            }
                .padding()
                .background(.black)
                .foregroundStyle(.white)
                .clipShape(.capsule)
                .scaleEffect(animationAmount)
                
        }
    }
}

#Preview {
    BindingView()
}
