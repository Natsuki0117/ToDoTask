//
//  AddToDoView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/21.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FSCalendar

struct ProfileView: View {
    @State private var isShowingSheet = false
    @State var ShowingAlert = false
    @State var SelectedTask: TaskItem?
    @State var tasks: [TaskItem] = []

  
    var body: some View {
      
            NavigationView{
               
                VStack{
                CalendarView()
                    .frame(height: 300) // カレンダーの高さを設定
                    .padding()
                
                    .toolbar{
                        Button{
                            isShowingSheet.toggle()
                        }label: {
                            Image(systemName: "pencil.circle")
                        }
                    }
                
                List(tasks) { task in
                    Button {
                        SelectedTask = task
                        ShowingAlert = true
                    } label: {
                        Text(task.name)
                    }
                    .frame(maxHeight: .infinity)
                }

                .navigationTitle("Profile")
            }
        }
        .sheet(isPresented: $isShowingSheet) {
            AddToDoView()
        }
        .alert(SelectedTask?.name ?? "", isPresented: $ShowingAlert, presenting: SelectedTask) { task in
            Button("Cancel", role: .none) {
                
            }
        } message: { task in
            Text("\(SelectedTask?.doTime ?? 0) 分")
//            Text("\(SelectedTask!.doTime) 分")
//            SelectedTaskに数字が入るって信じれる場合ならこっちでもok
        
        }
        
      
        .task {
            tasks = await FirestoreClient.fetchUserWishes()
        }
    }

}

struct CalendarView: UIViewRepresentable {
    func makeUIView(context: Context) -> FSCalendar {
        return FSCalendar()
    }
    
    func updateUIView(_ uiView: FSCalendar, context: Context) {
        // 必要な設定があればここで行う
    }
}
#Preview {
    ProfileView()
}
