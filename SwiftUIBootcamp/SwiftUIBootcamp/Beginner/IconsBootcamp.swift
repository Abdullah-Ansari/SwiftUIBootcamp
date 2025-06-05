//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//            .resizable()
//            .foregroundColor(Color.green)
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 300, height: 300)
//            .clipped()
        
        Image(systemName: "person.fill.badge.plus")
            .resizable()
            .renderingMode(.original)
            .font(.largeTitle)
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
            
    }
}

#Preview {
    IconsBootcamp()
}
