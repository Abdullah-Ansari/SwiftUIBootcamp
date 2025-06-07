//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 07/06/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State private var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .transition(.move(edge: .leading))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .bottom),
//                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .transition(.identity)
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
