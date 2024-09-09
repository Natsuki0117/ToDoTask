//
//  LoginView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/09/09.
//

import Foundation
import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var vm: AuthViewModel // EnvironmentObjectを使用

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
           
            Button {
                vm.signIn(email: email, password: password)
            } label: {
                Text("Log In")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            if let errorMessage = vm.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    LoginView().environmentObject(AuthViewModel())
}

//test

