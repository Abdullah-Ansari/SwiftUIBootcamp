//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 05/06/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("whatsapp")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .clipShape(Circle())
    }
}

#Preview {
    ImageBootcamp()
}
