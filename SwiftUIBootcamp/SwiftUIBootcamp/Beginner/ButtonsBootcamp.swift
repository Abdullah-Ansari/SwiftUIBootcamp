//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State private var  title = "This is the intial title."
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.headline)
            
            Button("Press me !!") {
                title = "Press me clicked !!"
            }
            
            Button(action: {
                title = "Save clicked"
            }, label: {
                Text("Save")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(30)
                    .padding(.horizontal, 40)
                    .background(Color.blue)
                    .clipShape(Capsule())
            })
            
            Button(action: {
                title = "Heart button clicked !!1"
            }, label: {
                if #available(iOS 15.0, *) {
                    Circle()
                        .fill(.white)
                        .frame(width: 100, height: 100)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.purple)
                        }
                } else {
                    // Fallback on earlier versions
                }
            })
            
            Button(action: {
                
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule().stroke(Color.gray, lineWidth: 2)
                    )
                    
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
