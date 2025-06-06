//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    /*
    let columns: [GridItem] = [
        GridItem(.fixed(65), spacing: nil, alignment: nil),
        GridItem(.fixed(65), spacing: nil, alignment: nil),
        GridItem(.fixed(65), spacing: nil, alignment: nil),
        GridItem(.fixed(65), spacing: nil, alignment: nil),
        GridItem(.fixed(65), spacing: nil, alignment: nil)
    ]
    */
   
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    let rows: [GridItem] = [
        GridItem(.flexible())
    ]
    
    
    /*
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 150, maximum: 300))
    ]
    */

    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(0..<25) { index in
                    if #available(iOS 15.0, *) {
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 100)
                            .shadow(radius: 5, x: 0, y: 5)
                            .overlay {
                                Text("\(index + 1)")
                                    .font(.headline)
                            }
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .frame(height: 120)
       
        
//        lazyVGrid()
        /*
        LazyVGrid(columns: columns) {
            ForEach(0..<50) { index in
                Rectangle()
                     .frame(height: 60)
            }
        }
        .frame(maxWidth: .infinity)
         */
    }
    
    @ViewBuilder
    func lazyVGrid() -> some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders]) {
                
                Section(header:
                            Text("Section 1")
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                        , content: {
                    ForEach(0..<50) { index in
                        Rectangle()
                             .fill(Color.green)
                             .frame(height: 100)
                    }
                })
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                        , content: {
                    ForEach(0..<50) { index in
                        Rectangle()
                             .fill(Color.orange)
                             .frame(height: 100)
                    }
                })
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
