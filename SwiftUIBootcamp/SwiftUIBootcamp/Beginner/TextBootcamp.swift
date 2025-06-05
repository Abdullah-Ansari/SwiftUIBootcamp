//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/.lowercased())
//        Text("Hello, World, This is the swiftful thinking bootcamp. I am really enjoying this course and learning a lot.")
            .font(.body)
//            .fontWeight(.semibold)
            .bold()
//            .underline()
//            .underline(true, color: .yellow)
            .italic()
//            .strikethrough()
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .leading)
            .border(.blue.opacity(0.5))
//            .foregroundColor(.red)
            .minimumScaleFactor(0.5)
            
    }
}

#Preview {
    TextBootcamp()
}
