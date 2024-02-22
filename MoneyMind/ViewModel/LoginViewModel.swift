//
//  LoginViewModel.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    // Metod za prijavljivanje korisnika
    func login() {
        // Implementacija logike za prijavljivanje korisnika
        print("Login with email: \(email) and password: \(password)")
    }
}
