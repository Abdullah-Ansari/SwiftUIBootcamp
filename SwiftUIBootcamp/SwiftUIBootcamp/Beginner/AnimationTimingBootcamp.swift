//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State private var isAnimating: Bool = false
    let timing: Double = 2
    
    var body: some View {
        VStack {
            
            Button("Button") {
                self.isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .frame(width: isAnimating ? 300 : 100,
                       height: 100)
//                .animation(.spring())
                .animation(.spring(
                    response: 1,
                    dampingFraction: 0.5,
                    blendDuration: 1.0
                )
                )
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 300 : 100,
                    height: 100
                )
                .animation(.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 300 : 100,
                    height: 100
                )
                .animation(.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 300 : 100,
                    height: 100
                )
                .animation(.easeInOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(
                    width: isAnimating ? 300 : 100,
                    height: 100
                )
                .animation(.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
