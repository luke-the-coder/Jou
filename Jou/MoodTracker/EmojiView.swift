//
//  EmojiView.swift
//  MoodTracker
//
//  Created by benedetta on 24/10/22.
//

import SwiftUI

struct EmojiView: View {
    
    var emojiButton : SheetStruct
    
    
    var body: some View {
        
        VStack {
            Text(emojiButton.emoji)
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(width: 60, height: 60)
                .background{
                    if emojiButton.isSelected {
                        Color.accentColor
                    } else {
                        Color("myCard")
                    }
                }
                .mask(Circle())
            Text(emojiButton.title)
        }
        
        
    }
}


struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiButton: SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are angry", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😠", title: "Angry", isSelected: false))
    }
}
