//
//  AppDelegate.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/15.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        FirebaseAuthManager.anonymousSignIn()
        return true
    }
}

@main
struct EmailSignInExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    //    @StateObject var vm = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            // ログイン状態によって画面遷移するページを変更する
            //            if vm.isAuthenticated {
            MainView()
            //            } else {
            //                ContentView(vm: vm)
            //            }
        }
    }
}
