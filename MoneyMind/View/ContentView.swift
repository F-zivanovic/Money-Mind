//
//  ContentView.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 350)
                    .padding(.top, 50)
                
                Spacer()
                
                NavigationLink(destination: LoginView()) {
                    Text("Go to Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.themePink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                             
                NavigationLink(destination: RegisterView()) {
                    Text("Go to Register")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.themeOrange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .background(Color.themeBlue.edgesIgnoringSafeArea(.all))
        }
    }
}

#Preview {
    ContentView()
}
