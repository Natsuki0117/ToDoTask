//
//  FirestoreClient.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/28.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class FirestoreClient {
    
    static var tasks: CollectionReference = Firestore.firestore().collection("tasks")
    
    //全部async awaitで！！！　↓こういう書き方
    //    static func aaaa() {
    //        Task {
    //            do {
    //                try await ....
    //            } catch {
    //                print(error.localizedDescription)
    //            }
    //        }
    //    }
    
    //    static func fetchTags() async throws -> [Tag] {
    //        guard FirebaseAuthManager.shared.user != nil else { return [] }
    //        return try await tags.getDocuments().documents.compactMap { try? $0.data(as: Tag.self) }
    //    }
    
    static func fetchAll() async -> [TaskItem] {
        guard let userId = Auth.auth().currentUser?.uid else{ return[]}
        do {
            //ユーザーのuserIdでフィルターする
            return try await tasks.whereField("userId", isEqualTo: userId).getDocuments().documents.compactMap { try? $0.data(as: TaskItem.self) }
            
        } catch {
            print("aaa")
            return []
        }
        
    }
    
    static func add(task: TaskItem) {
        Task{
            do {
                try await tasks.addDocument(data: task.encoded)
            } catch {
                print(error.localizedDescription)
            }
        }
        
    }
    
    //    static func update(task: TaskItem) {
    //        tasks.document(...).set
    ////        tasks.document("id").setData(..)
    //    }
    //
    //    static func delete(task: TaskItem) {
    //        tasks....
    ////        tasks.document("id").delete()
    //    }
    
}
