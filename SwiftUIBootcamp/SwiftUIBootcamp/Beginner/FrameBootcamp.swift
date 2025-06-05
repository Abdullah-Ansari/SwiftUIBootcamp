//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.green)
//            .frame(width: 100, height: 100)
//            .background(Color.red)
        
        Text("Hello, World")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150, alignment: .leading)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.red)
            .frame(height: 400, alignment: .top)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(Color.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
