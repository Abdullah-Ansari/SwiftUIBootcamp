//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State private var backgroundColor = Color.pink
    
    
    var body: some View {
        ZStack {
            // background layer
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // content layer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding(20)
                    .background(Color.black.cornerRadius(10))
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
