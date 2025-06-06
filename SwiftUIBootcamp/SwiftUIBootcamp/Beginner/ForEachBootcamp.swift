//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 06/06/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey, Everyone"]
    
    var body: some View {
        VStack {
            ForEach(0..<data.count, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
