//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here..")
                    .font(.title)
                Spacer()
                
                ForEach(0..<20) { index in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                    
                    
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color.red.edgesIgnoringSafeArea(.all))
        
        
        /*
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack {
                Text("Title goes here...")
                    .font(.title)
                Spacer()
            }
        }
        */
    }
}

#Preview {
    SafeAreaBootcamp()
}
