//
//  Previews_Intro.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 05/09/25.
//

import SwiftUI

struct Previews_Intro: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Previews")
                .font(.largeTitle)
            
            Text("Introduction")
                .foregroundStyle(.gray)
            
            Text("Xcode looks for a struct that conforms the PreviewProvider protocol and accesses its preview property to display a view on the Canvas.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.red)
                .foregroundStyle(.white)
        }
        .font(.title)
    }
}


struct Previews_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Previews_Intro()
            .preferredColorScheme(.dark)
    }
}

// iOS 17.0+

// This is called preview macro. we can get the same this with these number of lines.
#Preview("Light") {
    Previews_Intro()
        .preferredColorScheme(.light)
}

// Traitls is from iOS 18
#Preview("Landscape Left", traits: .landscapeLeft) {
    Previews_Intro()
        .preferredColorScheme(.light)
}
