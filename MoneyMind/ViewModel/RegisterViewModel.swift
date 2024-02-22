//
//  RegisterViewModel.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    
    // Metod za registraciju novog korisnika
    func register() {
        // Implementacija logike za registraciju novog korisnika
        print("Register with email: \(email), password: \(password), confirmPassword: \(confirmPassword)")
    }
}
