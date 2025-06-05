//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.orange, Color.white, Color.blue, Color.green]),
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.blue, Color.white, Color.green, Color.orange, Color.green]),
//                    center: .topLeading,
//                    startRadius: 50,
//                    endRadius: 100
//                )
//                
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                
                AngularGradient(
                    gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                    center: .top,
                    angle: .degrees(-135)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
