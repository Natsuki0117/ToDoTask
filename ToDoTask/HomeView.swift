//
//  DoTaskView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/21.
//

import SwiftUI

struct HomeView: View {
//    @ObservedObject var vm: AuthViewModel
    
    var body: some View {
        NavigationView{
            NavigationLink("SignUp") {
                           SignUpView()
                       }
            
            .navigationTitle("ToDoList")
            .toolbar{
                
                Button{
//                    vm.signOut()
                }label: {
                    Image(systemName: "plus")
                }
            }

        }
    }
}

#Preview {
    HomeView()
}

