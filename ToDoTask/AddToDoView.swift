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
    @State private var DoTime: String = "30"
    
    
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        
        Form {
            TextField("Title", text: $title)
                .textFieldStyle(DefaultTextFieldStyle())
            DatePicker("dueDate", selection: $dueDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
//            日本時間にします。絶対
            VStack {
                Text("タスクの重さ")
                    .font(.headline)
                
                // スライダーの実装
                Slider(value: Binding(
                    get: {
                        Double(moodLevel)
                    },
                    set: { newValue in
                        moodLevel = Int(newValue.rounded())
                    }
                ), in: 0...10, step: 1)
                .padding()
                
                // スライダーの値に応じた絵文字を表示
                Text(moodEmoji(for: moodLevel))
                    .font(.largeTitle)
                    .padding()
                Text("Mood Level: \(moodLevel)")
                    .font(.headline)
                    .padding()
            }
            TextField("time", text: $DoTime)
                .keyboardType(.numberPad)
                .textFieldStyle(DefaultTextFieldStyle())
                .padding()
            
            Button {
                
                print("\(title)")
                print("\(dueDate)")
                print("\(moodLevel)")
                print("\(DoTime)")
                // ボタンをタップした時のアクション
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
        
    }
    
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
    
#Preview {
    AddToDoView()
}

    

