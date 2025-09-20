//
//  SymbolsIntro.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 05/09/25.
//

import SwiftUI

struct SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Images")
                .font(.largeTitle)
            
            Text("Using SF Symbols")
                .foregroundStyle(.gray)
            
            Text("You will see I use the icons or symbols to add clarity to what i am demonstrating. These come from Apple's new symbol font library which you can browse using an app called's SF Symbol.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    SymbolsIntro()
}
