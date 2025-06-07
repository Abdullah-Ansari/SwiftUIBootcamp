//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.45)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack {
                MyItem(title: "Apples", count: 1, color: .red)
                MyItem(title: "Oranges", count: 30, color: .orange)
                MyItem(title: "Bananas", count: 45, color: .yellow)
            }
        }
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("\(count)")
                .font(.headline)
            
            Text(title)
                .font(.headline)
                .minimumScaleFactor(0.2)
                
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        
    }
    
}

#Preview {
    ExtractSubviewsBootcamp()
}
