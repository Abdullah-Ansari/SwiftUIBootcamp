//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 06/06/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<20) { index in
                                if #available(iOS 15.0, *) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                        .overlay {
                                            Text("\(index + 1)")
                                        }
                                } else {
                                    // Fallback on earlier versions
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
