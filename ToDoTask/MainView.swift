import SwiftUI
import FirebaseAuth // 必要なインポート

struct MainView: View {
    @EnvironmentObject var vm: AuthViewModel // EnvironmentObjectを使用する

    var body: some View {
        ZStack{
            
            
            LinearGradient(colors: [Color("test"),Color("Color")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
           
            VStack {
//                Button(action: {
//                    vm.logout() // logoutメソッドを呼び出す
//                }) {
//                    Text("Logout")
//                        .foregroundColor(.red)
//                }
//                .padding() // パディングを追加して余白を確保
                
                TabView {
                    ProfileView()
                        .tabItem {
                            Label("Main", systemImage: "square.and.pencil")
                        }
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person.crop.circle")
                        }
                    DoTaskView()
                        .tabItem {
                            Label("DoTask", systemImage: "trash.circle")
                        }
                }
//                tabview
            }
            
//            LinearGradient(colors: [Color("test"),Color("Color")], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            
            .background(Gradient(colors: [Color("Blue"),Color("Pink")])).opacity(0.6)
            
        }
        
    
        
//        let backGroundColor = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)

        
        }
    
}

#Preview {
    MainView()
        .environmentObject(AuthViewModel()) // プレビュー用の環境オブジェクト
}

