//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 11/06/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                NavigationLink("Hello , World", destination: MyOtherScreen())
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            
            .navigationTitle("All Inboxes")
            
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                NavigationLink(destination: MyOtherScreen(), label: {
                    Image(systemName: "gear")
                })
                .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen !")
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd Screen!"))
            }
            
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
