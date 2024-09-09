//
//  AppDelegate.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/15.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        // ここで匿名サインインを行う場合は、ViewModelを作成してから呼び出す必要があります。
        return true
    }
}

@main
struct EmailSignInExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var vm = AuthViewModel() // @StateObjectをここで定義

    var body: some Scene {
        WindowGroup {
            MainView() // AuthViewModelを直接渡さず、EnvironmentObjectで設定します。
                .environmentObject(vm) // ここでEnvironmentObjectとして渡します
        }
    }
}

