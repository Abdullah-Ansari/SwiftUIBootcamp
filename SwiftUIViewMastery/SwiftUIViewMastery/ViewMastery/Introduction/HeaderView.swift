//
//  HeaderView.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 05/09/25.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let desc: String
    let back: Color
    let textColor: Color
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(title)
                .foregroundStyle(Color.black)
                .font(.largeTitle)
            
            Text(subtitle)
                .foregroundStyle(Color.gray)
            
            Text(desc)
                .frame(maxWidth: .infinity)
                .foregroundStyle(textColor)
                .padding()
                .background(back)
        }
        .font(.title)
    }
}

#Preview {
    HeaderView(
        title: "Title",
        subtitle: "Subtitle",
        desc: "Short description of the What I am demonstrating goes here.",
        back: .purple,
        textColor: .white
    )
}
