////
////  LoginView.swift
////  ToDoTask
////
////  Created by 金井菜津希 on 2024/08/15.
////
//
//import SwiftUI
//import FirebaseAuth
//
//class AuthViewModel: ObservableObject {
////    @Published var errorMessage: String?
////    
////    init() {
////        observeAuthChanges()
////    }
//    
////    private func observeAuthChanges() {
////        Auth.auth().addStateDidChangeListener { [weak self] _, user in
////            DispatchQueue.main.async {
////                self?.isAuthenticated = user != nil
////            }
////        }
////    }
//    
////    Task {
////        do {
////            
////        } catch {
////            print(error.localizedDescription)
////        }
////    }
//    
////    Auth.auth().currentUser == nil
//    
//    func anonymousSignIn() {
//        Task {
//            do {
//                try await Auth.auth().signInAnonymously()
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
//    }
//    
//    func signIn(email: String, password: String) {
//        Task {
//            do {
//                try await Auth.auth().signIn(withEmail: email, password: password)
//            } catch {
//                print(error.localizedDescription)
//            }
//            
//        }
////        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
////            DispatchQueue.main.async {
////                if let error = error {
////                    self?.errorMessage = error.localizedDescription
////                } else {
////                    self?.isAuthenticated = true
////                }
////            }
////        }
//    }
//    
//    func signUp(email: String, password: String) {
//        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
//            DispatchQueue.main.async {
//                if let error = error {
//                    self?.errorMessage = error.localizedDescription
//                } else {
//                    self?.isAuthenticated = true
//                }
//            }
//        }
//    }
//    
//    func signOut() {
//        do {
//            try Auth.auth().signOut()
////            isAuthenticated = false
//        } catch {
////            errorMessage = error.localizedDescription
//        }
//    }
//}
