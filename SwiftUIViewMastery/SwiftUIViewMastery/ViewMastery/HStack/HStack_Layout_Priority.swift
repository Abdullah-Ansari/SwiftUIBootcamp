//
//  HStack_Layout_Priority.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 27/09/25.
//

import SwiftUI

struct HStack_Layout_Priority: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(
                title: "HStack",
                subtitle: "Layout Priority",
                desc: "Use the layoutPriority modifier to give priority to the space a view needs to show its content.",
                back: .orange,
                textColor: .black
            )
            
            Text(".layoutPriority(1) is set on 'Brings Balance'")
                .font(.caption)
            
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .lineLimit(1)
                Image(systemName: "swift")
                    .resizable()
                    .frame(width:80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .layoutPriority(1)
            }
            .padding(.horizontal)
            
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .layoutPriority(1)
                Image(systemName: "swift")
                    .resizable()
                    .frame(width:80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .lineLimit(1)
            }
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    HStack_Layout_Priority()
}
