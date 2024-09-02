
//
//  SliderView.swift
//  TaskApp
//
//  Created by 金井菜津希 on 2024/08/16.
//
import SwiftUI

struct SliderView: View {

    @State private var moodLevel: Int = 5
    @State var savedMessage: String? = nil
    let minLevel = 0
    let maxLevel = 10
    
    
    var body: some View {
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
            ), in: Double(minLevel)...Double(maxLevel), step: 1)
            .padding()
            
            // スライダーの値に応じた絵文字を表示
            Text(moodEmoji(for: moodLevel))
                .font(.largeTitle)
                .padding()
            Text("Mood Level: \(moodLevel)")
                .font(.headline)
                .padding()
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

struct MoodSliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
    
    #Preview {
        SliderView()
    }
}
