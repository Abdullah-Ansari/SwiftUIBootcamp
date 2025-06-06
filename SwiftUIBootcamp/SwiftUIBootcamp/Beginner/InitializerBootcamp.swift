//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 06/06/25.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        self.title = fruit == .apple ? "Apple" : "Orange"
        self.backgroundColor = fruit == .apple ? .red : .orange
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack(spacing: 20) {
        InitializerBootcamp(count: 55, fruit: .apple)
        InitializerBootcamp(count: 10, fruit: .orange)
    }
}
