//
//  LoginView.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            TextField("Email", text: $viewModel.email)
                .standardTextFieldStyle()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $viewModel.password)
                .standardSecureFieldStyle()
        
            Button(action: {viewModel.login()}, label: {
                Text("LOGIN")
                    .frame(maxWidth: .infinity, alignment: .center)
            })
            .styled(as: .orange, size: .big, state: .defaultState)
            Spacer()
        }
        .padding()
        .background(Color.themeDarkBlue.edgesIgnoringSafeArea(.all))
        
    }
}
#Preview {
    LoginView()
}
