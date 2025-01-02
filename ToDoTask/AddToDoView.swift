//
//  AddToDoView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/21.
//

import SwiftUI

struct AddToDoView: View {
    
    @State var title = ""
    @State var dueDate = Date()
    @State var time = ""
    @State var moodLevel: Int = 5
    @State private var doTime: String = "30"
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            Form {
                // タイトル入力
                TextField("Title", text: $title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // 期限の入力（DatePicker）
                DatePicker("dueDate", selection: $dueDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // タスクの重さをスライダーで選択
                VStack {
                    Text("タスクの重さ")
                        .font(.headline)
                    
                    Slider(value: Binding(
                        get: {
                            Double(moodLevel)
                        },
                        set: { newValue in
                            moodLevel = Int(newValue.rounded())
                        }
                    ), in: 0...10, step: 1)
                    .padding()
                    
                    Text(moodEmoji(for: moodLevel))
                        .font(.largeTitle)
                        .padding()
                    Text("Mood Level: \(moodLevel)")
                        .font(.headline)
                        .padding()
                }
                
                // かかる時間ラベルとdoTime
                VStack {
                    Text("かかる時間")
                        .font(.headline)
                    
                    TextField("時間（分単位）", text: $doTime)
                        .keyboardType(.numberPad)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                }
                
                // 保存ボタン
                Button {
//                     Firestoreにデータを保存
//                    FirestoreClient.add(taskName: title, sliderValue: Double(moodLevel), taskTitle: "Task", dueDate: dueDate, doTime: doTime)
                    
                    FirestoreClient.add(taskItem: TaskItem(name: title, slider:  String(moodLevel),  title: "Task", dueDate: dueDate, doTime: Int(doTime)!))
                    
                    print("Title: \(title)")
                    print("Due Date: \(dueDate)")
                    print("Mood Level: \(moodLevel)")
                    print("Do Time: \(doTime)")
                    
                    dismiss()
                    
                } label: {
                    Text("保存")
                        .padding()
                }
                .fontWeight(.semibold)
                .frame(width: 160, height: 48)
                .foregroundColor(Color(.white))
                .background(Color(.blue))
                .cornerRadius(24)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            
//            .background(Gradient(colors: [Color("Pink"),Color("purple")])).opacity(0.6)
            
        }
    }
    
    // Moodレベルに応じた絵文字を返す関数
    func moodEmoji(for level: Int) -> String {
        switch level {
        case 0...2:
            return "☺️"
        case 3...4:
            return "😀"
        case 5...6:
            return "😐"
        case 7...8:
            return "😖"
        case 9...10:
            return "😤"
        default:
            return "😐"
        }
    }
}

#Preview{
    AddToDoView()
    
}


