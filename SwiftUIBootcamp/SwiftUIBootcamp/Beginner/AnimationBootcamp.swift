//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State private var isAnimating = false
    var body: some View {
        VStack {
            Button("Start Animation") {
                withAnimation(
                    Animation
                        .default
                        .repeatForever()
                ) {
                    isAnimating.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 25)
                .fill(isAnimating ? .red : .green)
                .frame(
                    width: isAnimating ? 100 : 300,
                    height: isAnimating ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .offset(y: isAnimating ? 300 : 0)

            Spacer()
        }
        
    }
}

#Preview {
    AnimationBootcamp()
}
