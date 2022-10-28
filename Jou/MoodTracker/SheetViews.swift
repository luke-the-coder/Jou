//
//  SheetViews.swift
//  MoodTracker
//
//  Created by benedetta on 21/10/22.
//

import SwiftUI

struct SheetViews: View {
    @Environment(\.presentationMode) var presentationMode
    var emotion : SheetStruct

    var body: some View {
        
        
        ZStack {
            
            VStack{
                
                Text(emotion.titleCard)
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                Text(emotion.subTitleCard)
                Text(emotion.emoji)
                    .foregroundColor(Color(UIColor.tertiarySystemBackground))
                    .font(.system(size: 80.0))
                    .frame(width: 137, height: 137)
                    .background(Color.accentColor)
                    .mask(Circle())
                    .padding(.top, 16)
                
                Text(emotion.description)
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    ButtonBrowseAct()
                        .padding(.top, 16)
                    
                }
                
                
                Spacer()
                
            }
        }
        
        
    }
    
}

struct SheetViews_Previews: PreviewProvider {
    static var previews: some View {
        SheetViews(emotion: SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are happy", description: "Happiness has many different definitions and it motivate us to do things that are good for us.",emoji: "😁", title: "Happy", isSelected: false))
        
    }
}
