//
//  SecondView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/15.
//

import SwiftUI

struct MainView: View {
//    @ObservedObject var vm: AuthViewModel

    
//    todo画面作る、sliderこっちに持ってくる、期限作る、タイトル、かかる時間、保存ボタン
    
//自分のタスク進捗度合い（今日何時間できたのか、今週どれくらいやったのか）、（友人の進捗度合い）、(フレンドリスト)
  
    //AIがタスク選んでくれる画面、めちゃめちゃアニメーション派手に
    
    var body: some View {
        VStack {
   
            TabView{
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
        }
    
    }
}

#Preview {
    MainView()
}
