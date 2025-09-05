//
//  ViewSizes_Pull_In.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 05/09/25.
//

import SwiftUI

struct ViewSizes_Pull_In: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Layout Behavior")
                .font(.largeTitle)
            
            Text("Views that pull in")
                .foregroundStyle(.gray)
            
            Text("Some views minimize frame size so it is only as big as the content within in.")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding()
                .foregroundStyle(.white)
                .background(Color.purple)
            
            Image(systemName: "arrow.down.to.line.alt")
            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pulls-in")
                Image(systemName: "arrow.left.to.line.alt")
            }
            
            Image(systemName: "arrow.up.to.line.alt")
            
            Text("Pull in views tend to center themselves within their parent container view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.purple)
                .foregroundStyle(.white)
            
        }
        .font(.title)
    }
}

#Preview {
    ViewSizes_Pull_In()
}
