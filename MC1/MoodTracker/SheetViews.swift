//
//  SheetViews.swift
//  MoodTracker
//
//  Created by benedetta on 21/10/22.
//

import SwiftUI

struct SheetViews: View {
    
    var sheetView : SheetStruct
    
    
    
    var body: some View {
   
        
        ZStack {
        
            VStack{
              
                Text(sheetView.titleCard)
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                Text(sheetView.subTitleCard)
                Text(sheetView.emojiCard)
                    .foregroundColor(.white)
                    .font(.system(size: 80.0))
                    .frame(width: 137, height: 137)
                    .background(Color.accentColor)
                    .mask(Circle())
                    .padding(.top, 16)
               
                Text(sheetView.description)
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                BottonBrowseAct()
                    .padding(.top, 16)
                
                Spacer()
                
            }
        }
        
        
    }
        
}

//_____________________STRUCT 2___________________

struct sheeVieew: View {
    
    var sheets = [
        SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are happy", emojiCard: "😁", description: "Happiness has many different definitions and it motivate us to do things that are good for us."),
        SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are surprise", emojiCard: "😲", description: "Happiness has many different definitions and it motivate us to do things that are good for us."),
        SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are scared", emojiCard: "😰", description: "Happiness has many different definitions and it motivate us to do things that are good for us."),
        SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are disgusted", emojiCard: "🤢", description: "Happiness has many different definitions and it motivate us to do things that are good for us."),
        SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are angry", emojiCard: "😠", description: "Happiness has many different definitions and it motivate us to do things that are good for us."),
        SheetStruct(titleCard: "Mood of the day", subTitleCard: "Seems like you are sad", emojiCard: "😢", description: "Happiness has many different definitions and it motivate us to do things that are good for us.")
    ]

    
    var body: some View {
        
        ForEach(sheets) { sheet in
            SheetViews(sheetView: sheet)
        }
        
        
        /* ZStack {
         
         VStack{
         
         Text("Mood of the day")
         .bold()
         .font(.title)
         .padding(.top, 40)
         Text( "Seems like you are surprise")
         Text("😲")
         .foregroundColor(.white)
         .font(.system(size: 80.0))
         .frame(width: 137, height: 137)
         .background(Color("MoodBottons"))
         .mask(Circle())
         .padding(.top, 16)
         
         Text("Surprise is a feeling often experience and it is a fundamental for how we relate to the world.")
         .multilineTextAlignment(.center)
         .padding(.top, 16)
         BottonBrowseAct()
         .padding(.top, 16)
         Spacer()
         
         }*/
        
    }
}
        
        
    
        


/*struct ScaredSheet: View {
    var body: some View {
        
        ZStack {
        
            VStack{
                
                Text("Mood of the day")
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                Text( " Seems like you are scared")
                Text("😰")
                    .foregroundColor(.white)
                    .font(.system(size: 80.0))
                    .frame(width: 137, height: 137)
                    .background(Color("MoodBottons"))
                    .mask(Circle())
                    .padding(.top, 16)
                
                Text("Fear protect you from danger. You can’t prevent it, but being mindful can help you.")
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                BottonBrowseAct()
                    .padding(.top, 16)
                Spacer()
                
            }
        }
        
        
    }
        
}

struct DisgustedSheet: View {
    var body: some View {
        
        ZStack {
        
            VStack{
                Text("Mood of the day")
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                Text( " Seems like you are disgusted")
                Text("🤢")
                    .foregroundColor(.white)
                    .font(.system(size: 80.0))
                    .frame(width: 137, height: 137)
                    .background(Color("MoodBottons"))
                    .mask(Circle())
                    .padding(.top, 16)
                Text("Disgust is a strong feeling but accepting things that we dislike can lower our stress reactions.")
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                BottonBrowseAct()
                    .padding(.top, 16)
                Spacer()
                
            }
        }
        
        
    }
        
}

struct AngrySheet: View {
    var body: some View {
        
        ZStack {
        
            VStack{
                Text("Mood of the day")
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                Text( " Seems like you are angry")

                Text("😠")
                    .foregroundColor(.white)
                    .font(.system(size: 80.0))
                    .frame(width: 137, height: 137)
                    .background(Color("MoodBottons"))
                    .mask(Circle())
                    .padding(.top, 16)
                Text("Anger is normal response to difficult situations. Navigating it can help us growth and change.")
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                BottonBrowseAct()
                    .padding(.top, 16)
                Spacer()
                
            }
        }
        
        
    }
        
}

struct SadSheet: View {
    var body: some View {
        
        ZStack {
        
            VStack{
                Text("Mood of the day")
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                Text( " Seems like you are Surprise")
                Text("😢")
                    .foregroundColor(.white)
                    .font(.system(size: 80.0))
                    .frame(width: 137, height: 137)
                    .background(Color("MoodBottons"))
                    .mask(Circle())
                    .padding(.top, 16)
              
                Text("Sadness is a natural, valid and extremely common emotion. It’s okay to feel sad.")
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                BottonBrowseAct()
                    .padding(.top, 16)
                Spacer()
                
            }
        }
        
        
    }
        
}*/

struct SheetViews_Previews: PreviewProvider {
    static var previews: some View {
        SheetViews(sheetView: SheetStruct(titleCard: "Mood", subTitleCard: "Seems like you are happy", emojiCard: "😁", description: "Happiness has many different definitions and it motivate us to do things that are good for us."))
        sheeVieew()
           
    }
}
