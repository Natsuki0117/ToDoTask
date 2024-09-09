//
//  LogoutView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/09/09.
//

import Foundation
import SwiftUI

struct LogoutView: View {
    @EnvironmentObject var vm: AuthViewModel

    var body: some View {
        VStack {
            Text("ログイン中です")
                .font(.largeTitle)
                .padding()

            Button(action: {
                logOut()
            }) {
                Text("ログアウト")
                    .fontWeight(.semibold)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true) // 戻るボタンを非表示
    }

    private func logOut() {
        vm.logout() // AuthViewModelのlogoutメソッドを呼び出す
    }
}

#Preview {
    LogoutView().environmentObject(AuthViewModel())
}

//test
