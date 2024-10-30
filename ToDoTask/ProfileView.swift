//
//  AddToDoView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/21.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ProfileView: View {
    @State private var isShowingSheet = false
    @State var tasks: [TaskItem] = []
    var body: some View {
        NavigationView{
            LazyVStack{
                ForEach(tasks) { task in
//                    Table(tasks) {
//                           TableColumn("title") {  in
                               Text(TaskItem.title)
                           }
//                       }
                    
                }
            }
            .toolbar{
                Button{
                    isShowingSheet.toggle()
                }label: {
                    Image(systemName: "pencil.circle")
                }
            }
            .navigationTitle("Profile")
        }
        .sheet(isPresented: $isShowingSheet) {
            AddToDoView()
        }
        .task {
            tasks = await FirestoreClient.fetchUserWishes()
        }
    }
}

#Preview {
    ProfileView()
}

