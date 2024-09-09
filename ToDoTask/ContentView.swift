import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    @StateObject var vm = AuthViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                
                Form {
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        vm.signIn(email: email, password: password)
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    
                    NavigationLink(destination: SignUpView()) {
                        Text("Create Account")
                    }
                    
                    if let errorMessage = vm.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    }
                }
                .navigationBarHidden(true)
                .fullScreenCover(isPresented: $vm.isAuthenticated) {
                    MainView() // EnvironmentObjectはここで渡す必要がある
                        .environmentObject(vm) // ここでEnvironmentObjectを渡す
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


