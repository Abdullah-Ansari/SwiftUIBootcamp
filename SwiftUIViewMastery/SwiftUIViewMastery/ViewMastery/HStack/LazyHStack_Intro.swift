//
//  LazyHStack_Intro.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 27/09/25.
//

import SwiftUI

struct LazyHStack_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            
            HeaderView(
                title: "LazyHStack",
                subtitle: "Introduction",
                desc: "When using the LazyHStack by itself, you won't notice much difference from the HStack.",
                back: .yellow,
                textColor: .black
            )
            
            Text("LazyHStack")
            
            LazyHStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red)
            
            Text("HStack")
            
            HStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red)
         
            Text("Notice the LazyHStack pushes out vertically. (No Spacers being used here.")
                .frame(maxWidth: .infinity)
                .padding(10)
                .background(Color.yellow)
                .padding(.bottom)
        }
        .font(.title)
        
    }
}

#Preview {
    LazyHStack_Intro()
}
