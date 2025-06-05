//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 30)
            .shadow(
                color: Color("CustomColor").opacity(0.5),
                radius: 10,
                x: 10,
                y: 10
            )
    }
}

#Preview {
    ColorsBootcamp()
}
