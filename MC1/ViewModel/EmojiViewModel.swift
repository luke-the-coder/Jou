//
//  EmojiViewModel.swift
//  MC1
//
//  Created by benedetta on 25/10/22.
//

import SwiftUI

class EmojiViewModel: ObservableObject {
    
    // Mantiene il Model
    @Published var emojis = [
            SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are happy", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😁", title: "Happy", isSelected: false),
            SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are surprise", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😲", title: "Surpised", isSelected: false),
            SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are scared", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😰", title: "Scared", isSelected: false),
            SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are disgusted", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "🤢", title: "Disgusted", isSelected: false),
            SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are angry", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😠", title: "Angry", isSelected: false),
            SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are sad", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😢", title: "Sad", isSelected: false)
    ]
    
    // User Intents
    
    func selectEmoji(at index: Int) {
        for i in 0..<emojis.count {
            emojis[i].isSelected = false
        }
        self.emojis[index].isSelected.toggle()
    }
    
}


