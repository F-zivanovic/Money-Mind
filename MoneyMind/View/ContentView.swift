//
//  ContentView.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginView()) {
                    Text("Go to Login")
                }
                NavigationLink(destination: RegisterView()) {
                    Text("Go to Register")
                }
            }
        }
    }
}

