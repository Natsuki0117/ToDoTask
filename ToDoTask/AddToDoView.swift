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
    
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        
        Form {
            TextField("Title", text: $title)
                .textFieldStyle(DefaultTextFieldStyle())
            DatePicker("dueDate", selection: $dueDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
        SliderView()
            
            Button {
                // ボタンをタップした時のアクション
                
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
}
    
#Preview {
    AddToDoView()
}

    

