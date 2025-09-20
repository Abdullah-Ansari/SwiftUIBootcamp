//
//  HStack_TextAlignment_FirstLast.swift
//  SwiftUIViewMastery
//
//  Created by Abdullah Ansari on 20/09/25.
//

import SwiftUI

struct HStack_TextAlignment_FirstLast: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(
                title: "HStack",
                subtitle: "First and Last Text Alignment",
                desc: "The firstTextBaseLine  will align the bottom of the text on the first line (\"Amazing\" and \"Really\").",
                back: .orange,
                textColor: .black)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Amazing developer")
                    .font(.title3)
                Text("Really amazing developer")
            }
            .frame(width: 250)
            
            DescView(
                desc: "The lastTextBaseLine  will align the bottom of the text on the last line (\"developer\" and \"developer\").",
                back: .orange)
            
            HStack(alignment: .lastTextBaseline) {
                Text("Amazing developer")
                    .font(.title3)
                Text("Really amazing developer")
            }
            .frame(width: 250)
        }
        .font(.title)
    }
}

#Preview {
    HStack_TextAlignment_FirstLast()
}
