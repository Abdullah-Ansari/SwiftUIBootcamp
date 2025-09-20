//
//  HStack_Intro.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 20/09/25.
//

import SwiftUI

struct HStack_Intro: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(
                title: "HStack",
                subtitle: "Introduction",
                desc: "An HStack will horizontally arrange other views within it.",
                back: .orange, 
                textColor: .black
            )
        }
        .font(.title)
    }
}

#Preview {
    HStack_Intro()
}
