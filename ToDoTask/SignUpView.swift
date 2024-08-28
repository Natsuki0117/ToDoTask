//
//  SignUpView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/19.
//

import SwiftUI

struct SignUpView: View{

//    @State var email: String = ""
//    @State var password: String = ""
//    @StateObject var vm = AuthViewModel()
    
    var body: some View {
        Form{
//            TextField("Email", text: $email)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//            SecureField("Password", text: $password)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button{
                
//    vm.signUp(email: email, password: password)
                
            } label: {
                    Text("アカウントを作る")
                        .bold()
            }
        }
        
    }
    
 
}
