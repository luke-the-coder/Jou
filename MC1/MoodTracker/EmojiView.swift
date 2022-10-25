//
//  EmojiView.swift
//  MoodTracker
//
//  Created by benedetta on 24/10/22.
//

import SwiftUI

struct EmojiView: View {
    
    var emojiScroll : EmojiStruct
    
    
    var body: some View {
        
        VStack {
            Text(emojiScroll.emoji)
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(width: 60, height: 60)
                .background{
                    if emojiScroll.isSelected {
                        Color.accentColor
                    } else {
                        Color.white
                    }
                }
                .mask(Circle())
            Text(emojiScroll.title)
        }
        
        
    }
}


struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiScroll: EmojiStruct(emoji: "😠", title: "Angry", isSelected: false))
    }
}
