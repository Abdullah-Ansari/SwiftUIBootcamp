//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State private var backgroundColor: Color = .blue
    @State private var title = "My Title"
    var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        }
    }
    
    private var contentLayer: some View {
        
        VStack {
            Text(title.uppercased())
                .foregroundColor(.white)
            
            ButtonView(
                backgroundColor: $backgroundColor,
                title: $title
            )
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State private var buttonText = "Button"
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonText = "Save"
            title = "New Title !!!"
        }, label: {
            Text(buttonText)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.red)
                .cornerRadius(5)
        })
    }
}
#Preview {
    BindingBootcamp()
}
