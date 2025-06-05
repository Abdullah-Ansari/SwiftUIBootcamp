//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            .fill(Color.red)
//            .foregroundColor(.blue)
//            .stroke()
//            .stroke(lineWidth: 10)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [30]))
//            .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.75)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
