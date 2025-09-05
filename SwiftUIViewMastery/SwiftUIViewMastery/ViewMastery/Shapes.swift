//
//  Shapes.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 05/09/25.
//

import SwiftUI

private struct Shapes: View {
    var body: some View {
        
        VStack(spacing: 15) {
            
            Text("Shapes")
                .font(.largeTitle)
            
            Text("Short Introduction")
                .foregroundStyle(.gray)
            
            Text("I will make shapes, give them color and put behind the other views. Also provide the style to it.")
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
            
            Text("This text has the rounded background behind it.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.blue)
                )
                .foregroundStyle(.white)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    Shapes()
}
