//
//  VStack_Props.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 06/09/25.
//

import SwiftUI

private struct VStack_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("VStack")
                .font(.largeTitle)
            
            Text("Alignment")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("By default, views in a VStack are centered aligned.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
                .font(.title)
            
            VStack(alignment: .leading, spacing: 40) {
                Text("Leading Alignment")
                    .font(.title)
                
                Rectangle()
                    .frame(height: 1)
                
                Image(systemName: "arrow.left")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.blue)
            )
            .foregroundStyle(.white)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing Alignment")
                
                Rectangle()
                    .frame(height: 1)
                
                Image(systemName: "arrow.right")
            }
            .padding()
            .background(
             RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
            )
            .foregroundStyle(.white)
            .padding()
        }
    }
}

#Preview {
    VStack_Alignment()
}
