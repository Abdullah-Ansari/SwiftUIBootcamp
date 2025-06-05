//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        
        if #available(iOS 15.0, *) {
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [.purple, .purple.opacity(0.7)],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .purple.opacity(0.7), radius: 10, x: 0, y: 10)
                        .overlay (
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35)
                                .overlay(content: {
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                })
                                .shadow(color: .purple.opacity(0.7), radius: 10, x: 0, y: 10)
                            
                            , alignment: .bottomTrailing
                        )
                )
                
        } else {
            // Fallback on earlier versions
        }
        
        /*
        if #available(iOS 15.0, *) {
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay (
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .topLeading)
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    , alignment: .bottomTrailing)
                
        } else {
            // Fallback on earlier versions
        }
         */
        
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.red, .blue],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 100, height: 100)
            )
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.blue, .red],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 120, height: 120)
            )
         */
        
        
        
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
