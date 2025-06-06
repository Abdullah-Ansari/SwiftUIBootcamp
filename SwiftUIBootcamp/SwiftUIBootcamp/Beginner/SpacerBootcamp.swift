//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 06/06/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal, 10)
            
            Spacer()
            
            Rectangle()
                .frame(height: 50)
        }
        /*
        HStack {
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(.black)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
        .padding(.horizontal, 100)
        .background(Color.blue)
         */
    }
}

#Preview {
    SpacerBootcamp()
}
