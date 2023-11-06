//
//  OverlayView.swift
//  Animations
//
//  Created by Dillon Teakell on 11/3/23.
//

import SwiftUI

struct OverlayView: View {
    @State private var animationAmount = 1.0
    var body: some View {
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(20)
        
            Text("Please tap to get started")
            .font(.title3)
            .fontWeight(.medium)
            .padding(.bottom, 85)

        
            Button ("Tap Me!") {}
            .padding(50)
            .foregroundStyle(.secondary)
            .background(.primary)
            .clipShape(.circle)
            // To make an overlay:
            .overlay (
                Circle()
                    .stroke(.primary)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeOut(duration: 3)
                        .repeatForever(autoreverses: false),
                        value: animationAmount
                    )
            )
            .onAppear {
                animationAmount = 2
        }
    }
}


#Preview {
    OverlayView()
}
