//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State private var backgroundColor: Color = .red
    @State private var myTitle = "This is my Title"
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text(myTitle)
                .font(.title3)
            
            Text("count: \(count)")
                .font(.headline)
                .underline()
            
            HStack(spacing: 20) {
                Button(action: {
                    myTitle = "Button 1 Pressed"
                    count += 1
                    backgroundColor = .green
                }, label: {
                    Text("Button 1")
                })
            
                Button(action: {
                    myTitle = "Button 2 Pressed"
                    count -= 1
                    backgroundColor = .purple
                }, label: {
                    Text("Button 2")
                })
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        .foregroundColor(.white)
    }
}

#Preview {
    StateBootcamp()
}
