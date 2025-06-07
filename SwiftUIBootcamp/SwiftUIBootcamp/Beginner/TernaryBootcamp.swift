//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State private var isStartingState = false
    var body: some View {
        VStack(spacing: 25) {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(!isStartingState ? "Starting State" : "End State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 0 : 25)
                .frame(
                    width: isStartingState ? 150 : 200,
                    height: isStartingState ? 200 : 200
                )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
