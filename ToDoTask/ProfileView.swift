//
//  AddToDoView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/21.
//

import SwiftUI

struct ProfileView: View {
    @State private var isShowingSheet = false
    var body: some View {
        NavigationView{
            VStack{
                Text("aaa")
            }
            .toolbar{
                Button{
                    isShowingSheet.toggle()
                }label: {
                    Image(systemName: "plus")
                }
            }
            .navigationTitle("Profile")
        }
        .sheet(isPresented: $isShowingSheet) {
            AddToDoView(moodlabel: Int())
        }
    }
}

#Preview {
    ProfileView()
}
