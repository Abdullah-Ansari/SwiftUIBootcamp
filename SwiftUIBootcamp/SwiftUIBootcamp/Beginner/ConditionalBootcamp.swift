//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State private var showCircle = false
    @State private var showRectangle = false
    @State private var isLoading = false
    
    var body: some View {
        VStack(spacing: 30) {
            
            
            
            Button("isLoading") {
                isLoading.toggle()
            }
            
            Button("Show cricle: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Show Rectangle: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            if showCircle {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 75, height: 75)
            }
            
            if showRectangle {
                Rectangle()
                    .fill(Color.blue.opacity(0.4))
                    .frame(width: 200, height: 150)
            }
            
            if !(showCircle || showRectangle) {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 200)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
