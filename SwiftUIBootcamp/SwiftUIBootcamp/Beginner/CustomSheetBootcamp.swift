//
//  CustomSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 16/06/25.
//

import SwiftUI

struct CustomSheetBootcamp: View {
    @State private var showSheet = false

    var body: some View {
        ZStack {
            Button("Show Sheet") {
                withAnimation {
                    showSheet = true
                }
            }

            CustomSheet(isPresented: $showSheet, heightFraction: 0.8) {
                // Important: NavigationView goes directly here
                NavigationView {
                    SheetHomeView(showSheet: $showSheet)
                }
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
}

struct SheetHomeView: View {
    @Binding var showSheet: Bool
    @State private var navigateToSecond = false

    var body: some View {
        VStack(spacing: 20) {
            Text("First Sheet Screen")
                .font(.headline)

            // ✅ Real programmatic NavigationLink (visible in view hierarchy)
            NavigationLink(destination: SecondSheetScreen(), isActive: $navigateToSecond) {
                EmptyView()
            }

            Button("Go to Second Screen") {
                navigateToSecond = true
            }

            Button("Close Sheet") {
                showSheet = false
            }
        }
        .padding()
        .navigationBarTitle("Sheet", displayMode: .inline)
    }
}

struct SecondSheetScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Second Sheet Screen")
                .font(.title)
            Spacer()
        }
        .padding()
        .navigationBarTitle("Second", displayMode: .inline)
    }
}


struct CustomSheet<Content: View>: View {
    let heightFraction: CGFloat
    let content: Content
    @Binding var isPresented: Bool

    init(isPresented: Binding<Bool>, heightFraction: CGFloat, @ViewBuilder content: () -> Content) {
        self._isPresented = isPresented
        self.heightFraction = heightFraction
        self.content = content()
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if isPresented {
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                isPresented = false
                            }
                        }

                    VStack {
                        Spacer()

                        content
                            .frame(height: geometry.size.height * heightFraction)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(20)
                            .offset(y: 30)
                    }
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .bottom)
                    ))
                    .animation(.easeInOut, value: isPresented)
//                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    CustomSheetBootcamp()
}
