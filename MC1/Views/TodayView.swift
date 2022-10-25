//
//  TodayView.swift
//  MC1
//
import SwiftUI

struct TodayView: View {
    
    @State var viola: Color = .accentColor
    
    var emojis = [
        EmojiStruct(emoji: "😁", title: "Happy", isSelected: false),
        EmojiStruct(emoji: "😲", title: "Surpised", isSelected: false),
        EmojiStruct(emoji: "😰", title: "Scared", isSelected: false),
        EmojiStruct(emoji: "🤢", title: "Disgusted", isSelected: false),
        EmojiStruct(emoji: "😠", title: "Angry", isSelected: false),
        EmojiStruct(emoji: "😢", title: "Sad", isSelected: false)
    ]
    
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color("myBackground").ignoresSafeArea()
                VStack(alignment: .leading) {
                    Text("How do you feel today?").padding(.leading, 17)
                    ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 20) {
                        
                        ForEach(emojis) { emoji in
                            EmojiView(emojiScroll: emoji)
                        }
                        .onTapGesture {

                        }
                    }.navigationTitle("Hi there!").toolbar{
                        Button("Journal") {
                            showingSheet.toggle()
                        }.sheet(isPresented: $showingSheet) {
                            JournalView()
                        }.animation(Animation.linear, value: 2)
                    }
                    
                }.padding(.leading, 15)
                    
                    Spacer()
                }
            }
        }
    }
}


struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
