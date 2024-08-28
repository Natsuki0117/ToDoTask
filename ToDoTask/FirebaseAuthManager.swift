//
//  FirebaseAuthManager.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/28.
//

import Foundation
import FirebaseAuth

enum FirebaseAuthManager {
    static func anonymousSignIn() {
        Task {
            do {
                try await Auth.auth().signInAnonymously()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
