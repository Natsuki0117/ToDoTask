//
//  HeaderView.swift
//  ToDoTask
//
//  Created by 金井菜津希 on 2024/08/19.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 0
            )
            .foregroundColor(.indigo)
            .rotationEffect(Angle(degrees: 10))
            .offset(y: -100)
            
            Text("ToDoList")
                .font(.system(size: 50))
                .foregroundColor(Color.white)
                .offset(y: -100)
            Text("aaa")
            
                Spacer()
        }
        
        
        .frame(width: UIScreen.main.bounds.width * 3,height: 300)
        
    }
}
