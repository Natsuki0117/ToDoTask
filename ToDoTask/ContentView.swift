////
////  ContentView.swift
////  ToDoTask
////
////  Created by 金井菜津希 on 2024/08/15.
////
//import SwiftUI
//
//struct ContentView: View {
//    @State var email: String = ""
//    @State var password: String = ""
//
////    @StateObject var vm = AuthViewModel()
//    
//    var body: some View {
//        NavigationStack {
//            VStack {
////                title,header
//            HeaderView()
//                
//                Form{
//                    TextField("Email", text: $email)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                    SecureField("Password", text: $password)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                   
//                    Button{
//                        vm.signIn(email: email, password: password)
//                       
//                    } label: {
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                            Text("Log In")
//                                .foregroundColor(Color.white)
//                                .bold()
//                        }
//                    }
//                    
//                }
////                アカウント作成画面に移動
//                    NavigationView {
//                                NavigationLink(destination: SignUpView()) {
//                                    Text("Create Account")
//                                }
//                            }
//                     
////                if let errorMessage = vm.errorMessage {
////                    Text(errorMessage)
////                        .foregroundColor(.red)
////                }
//            }
//            .navigationBarHidden(true)
////                        .fullScreenCover(isPresented: $vm.isAuthenticated) {
////                            MainView(vm: vm)
////                        }
//        }
//    }
//}
//#Preview {
//    ContentView()
//}
