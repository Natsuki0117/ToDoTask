import SwiftUI

struct LogoutView: View {
    @EnvironmentObject var vm: AuthViewModel
    @State private var isLoggedOut = false // ログアウト状態を管理

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
            
            // ログアウト後にLoginViewに移動
            NavigationLink(destination: LoginView(), isActive: $isLoggedOut) {
                LoginView()
            }
        }
        .navigationBarBackButtonHidden(true) // 戻るボタンを非表示
    }

    private func logOut() {
        vm.logout() // ログアウト処理
        isLoggedOut = true // ログアウト後に状態を変更
    }
}

#Preview {
    LogoutView().environmentObject(AuthViewModel())
}

//こっちがユーザーが匿名の方
