//
//  VStack_Intro.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 06/09/25.
//

import SwiftUI

private struct VStack_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(
                title: "VStack",
                subtitle: "Introduction",
                desc: "A VStack will vertically arrange other views within it.",
                back: .blue,
                textColor: .white
            )
            
            Text("View 1")
            Text("View 2")
            Text("View 3")
            Text("View 4")
            Text("View 5")
            Text("View 6")
            Text("View 7")
            Text("View 8")
            Text("View 9")
        }
        .font(.title)
    }
}

private struct VStack_Spacing: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("VStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("The VStack initializer allows you to set the spacing between all the views inside the VStack.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .font(.title)
                .foregroundStyle(.white)
            
            Image(systemName: "arrow.up.and.down.circle.fill")
                .font(.largeTitle)
            
            Text("The spacing here between all of these views is 80")
                .font(.title)
        }
    }
}

#Preview {
    VStack_Intro()
}

struct VStack_Spacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Spacing()
            .previewDisplayName("VStack Spacing")
    }
}
