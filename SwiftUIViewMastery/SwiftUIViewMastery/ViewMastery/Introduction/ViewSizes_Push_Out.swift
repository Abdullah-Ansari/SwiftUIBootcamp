//
//  ViewSizes_Push_Out.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 05/09/25.
//

import SwiftUI

struct ViewSizes_Push_Out: View {
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Layout Behavior")
                .foregroundStyle(.black)
            
            Text("Views that push out")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("Some views will push out to fill up all avaiable space within their parents.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.purple)
            
            Color.purple
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding()
                    , alignment: .topLeading
                )
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .padding()
                    , alignment: .topTrailing
                )
                .overlay(
                    Image(systemName: "arrow.down.left")
                        .padding()
                    , alignment: .bottomLeading
                )
                .overlay(
                    Image(systemName: "arrow.down.right")
                        .padding()
                    , alignment: .bottomTrailing
                )
                .overlay {
                    Text("Color are push out views.")
                }
        }
        .font(.largeTitle)
        .foregroundStyle(.white)
        
    }
}

#Preview {
    ViewSizes_Push_Out()
}
