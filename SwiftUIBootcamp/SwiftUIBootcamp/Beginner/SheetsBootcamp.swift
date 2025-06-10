//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 09/06/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    SheetsBootcamp()
}
