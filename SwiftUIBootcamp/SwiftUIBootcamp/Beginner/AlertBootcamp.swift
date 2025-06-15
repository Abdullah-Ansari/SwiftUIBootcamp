//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Abdullah Ansari on 15/06/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State private var showAlert = false
    @State private var backgroundColor = Color.yellow
    @State private var alertState: AlertState? = nil
    
    enum AlertState {
        case error
        case success
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                
                Button("Button 1") {
                    alertState = .success
                    showAlert = true
                }
                
                Button("Button 2") {
                    alertState = .error
                    showAlert = true
                }
            }
            .foregroundColor(Color.orange)
            .font(.title)
            // ✅ Single .alert modifier outside the VStack
            .alert(isPresented: $showAlert, content: {
                getAlert(status: alertState ?? .success)
            })
        }
    }
    
    private func getAlert(status: AlertState) -> Alert {
        switch status {
        case .error:
            return Alert(
                title: Text("Error !!"),
                message: Text("Ooops!! Getting some bad news !!😕"),
                primaryButton: .default(Text("Ok"), action: {
                    backgroundColor = .red
                }),
                secondaryButton: .cancel(Text("Cancel"))
            )
        case .success:
            return Alert(
                title: Text("Success"),
                message: Text("This is the good news!! 🥳"),
                primaryButton: .default(Text("Ok"), action: {
                    backgroundColor = .green
                }),
                secondaryButton: .cancel(Text("Cancel"))
            )
        }
    }
}

#Preview {
    AlertBootcamp()
}
