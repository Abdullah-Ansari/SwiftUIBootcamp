//
//  LazyVStack_Intro.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 06/09/25.
//

import SwiftUI

struct LazyVStack_Intro: View {
    var body: some View {
        VStack(spacing: 10.0) {
            HeaderView(
                title: "LazyVStack",
                subtitle: "Introduction",
                desc: "When using the LazyVStack by itself, you won't notice much of a difference from the VStack.",
                back: .yellow,
                textColor: .white
            )
            .layoutPriority(1)
            
            Text("LazyVStack")
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            
            Text("VStack")
            VStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            
            Text("Notice the LazyVStack pushes out horizontally. (No Spacers being used here.")
        }
        .font(.title)
    }
}

private struct LazyVStack_Alignment: View {
    var body: some View {
        VStack {
            HeaderView(
                title: "LazyVStack",
                subtitle: "Alignment",
                desc: "Since LazyVStack are push out views horizontally the alignment parameter could be useful.",
                back: .yellow,
                textColor: .black
            )
            
            Text("Leading")
            
            LazyVStack(alignment: .leading, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            
            Text("Trailing")
            
            LazyVStack(alignment: .trailing, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
        }
        .font(.title)
    }
}

struct LazyVStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack_Alignment()
            .previewDisplayName("Alignment")
    }
}

#Preview {
    LazyVStack_Intro()
}
