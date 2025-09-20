//
//  HStack_Alignment.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 20/09/25.
//

import SwiftUI

struct HStack_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(
                title: "HStack",
                subtitle: "Vertical Alignment",
                desc: "By default, views within an HStack are vertically aligned in the center.",
                back: .orange,
                textColor: .black
            )
            .layoutPriority(1)
            
            HStack {
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing, 25)
            }
            .border(.orange)
            
            HStack(alignment: .top) {
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing, 25)
            }
            .border(.orange)
            
            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing, 25)
            }
            .border(.orange)
        }
    }
}

#Preview {
    HStack_Alignment()
}
