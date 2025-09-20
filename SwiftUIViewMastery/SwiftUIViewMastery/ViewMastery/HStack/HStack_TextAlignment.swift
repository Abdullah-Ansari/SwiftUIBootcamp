//
//  HStack_TextAlignment.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 20/09/25.
//

import SwiftUI

struct HStack_TextAlignment: View {
    var body: some View {
        VStack {
            HeaderView(
                title: "HStack",
                subtitle: "Text Alignment",
                desc: "HStack has another alignment option to help better align the bottom of the text.",
                back: .orange,
                textColor: .black)
            
            HStack(alignment: .bottom) {
                Text("Hello")
                Text("amazing")
                    .font(.largeTitle)
                Text("developers")
            }
            .underline()
            .font(.body)
            
            DescView(
                desc: "Notice the bottom of the text is not really aligned above. Use the firstTextBaseline or lastTextBaseline instead.",
                back: .orange)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Hello")
                Text("amazing")
                    .font(.largeTitle)
                Text("developers")
            }
            .font(.body)
            .underline()
            .border(.orange)
        }
        .font(.title)
    }
}

#Preview {
    HStack_TextAlignment()
}

struct DescView: View {
    
    let desc: String
    let font: Font
    let back: Color
    
    init(desc: String, font: Font = .title, back: Color) {
        self.desc = desc
        self.font = font
        self.back = back
    }
    
    var body: some View {
        Text(desc)
            .font(font)
            .padding()
            .background(back)
    }
}
