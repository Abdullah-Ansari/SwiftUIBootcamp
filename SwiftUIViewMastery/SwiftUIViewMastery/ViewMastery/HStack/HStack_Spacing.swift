//
//  HStack_Spacing.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 20/09/25.
//

import SwiftUI

struct HStack_Spacing: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(
                title: "HStack",
                subtitle: "Spacing",
                desc: "The HStack initializer allows you to set the spacing between all the views inside the HStack.",
                back: .orange,
                textColor: .black)
            
            Text("Default Sapcing")
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .font(.largeTitle)
            
            Text("Sapcing: 100")
            HStack(spacing: 100) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                
            }
            .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    HStack_Spacing()
}
