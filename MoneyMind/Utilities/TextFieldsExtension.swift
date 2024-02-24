//
//  TextFieldsExtension.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI
/// Extension to provide a standardized style for TextField elements.
extension TextField {
    /// Applies a standard text field style with padding, background, and corner radius.
    func standardTextFieldStyle() -> some View {
        self
            .padding()
            .background(Color.themeLightGray)
            .cornerRadius(5.0)
            .foregroundColor(.themeDarkBlue)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

/// Extension to provide a standardized style for SecureField elements.
extension SecureField {
    /// Applies a standard text field style with padding, background, and corner radius.
    func standardSecureFieldStyle() -> some View {
        self
            .padding()
            .background(Color.themeLightGray)
            .cornerRadius(5.0)
            .foregroundColor(.themeDarkBlue)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}
