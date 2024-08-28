//
//  TaskItem.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/21.
//

import FirebaseFirestore

struct TaskItem: Codable{
    @DocumentID var id: String?
    var userid: String
    var name: String
    var slider: Double
    var title: String
    var dueDate: Date
}

extension Encodable{
    var encoded: [String: Any] {
        get throws{
            try Firestore.Encoder().encode(self)
        }
    }
}



