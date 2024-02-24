//
//  RegisterView.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            TextField("Email", text: $viewModel.email)
                .standardTextFieldStyle()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $viewModel.password)
                .standardSecureFieldStyle()
            
            SecureField("Confirm Password", text: $viewModel.confirmPassword)
                .standardSecureFieldStyle()
            
            Button(action: {viewModel.register()}, label: {
                Text("REGISTER")
                    .frame(maxWidth: .infinity, alignment: .center)
            })
            .styled(as: .blue, size: .big, state: .defaultState)
            Spacer()
        }
        .padding()
        .background(Color.themeOrange.edgesIgnoringSafeArea(.all))
    }
}
#Preview {
    RegisterView()
}
