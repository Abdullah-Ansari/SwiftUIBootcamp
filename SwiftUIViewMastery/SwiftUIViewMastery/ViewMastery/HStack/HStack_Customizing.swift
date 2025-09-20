//
//  HStack_Customizing.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 20/09/25.
//

import SwiftUI

struct HStack_Customizing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(
                title: "HStack",
                subtitle: "Customization",
                desc: "HStack are views that can have modifiers applied to them just like other view.",
                back: .orange,
                textColor: .black)
            
            HStack {
                Text("Leading")
                Text("Middle")
                Text("Trailing")
            }
            .padding()
            .border(.orange)
            
            HStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .padding()
            
            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    HStack_Customizing()
}
