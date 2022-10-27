//
//  TodayView.swift
//  MC1
//
import SwiftUI

struct TodayView: View {
    
    @State var viola: Color = .accentColor
        
    @State private var showingSheet = false
    
    @State private var emotionSheet = false
    
    @State private var selectedEmoji: SheetStruct?

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color("myBackground").ignoresSafeArea()
                VStack(alignment: .leading) {
                    Text("How do you feel today?").padding(.leading, 17)
                    ScrollView(.horizontal, showsIndicators: false) {
                        //benny
                        HStack(spacing: 20) {
                            
                            ForEach(emojis, id: \.id) { emoji in
                                Button {
                                    selectedEmoji = emoji
                                } label: {
                                    EmojiView(emojiButton: emoji)
                                        .foregroundColor(.primary)
                                }
                                .sheet(item: $selectedEmoji) { selectedEmoji in
                                    SheetViews(emotion: selectedEmoji)
                                    .presentationDetents([.height(415)])
                                    
                                }
                                
                            }
                            //benny finish
                            
                        }
                        .navigationTitle("Hi there!")
                        .toolbar{
                            Button("Journal") {
                                showingSheet.toggle()
                            }
                            .sheet(isPresented: $showingSheet) {
                                JournalView()
                            }
                            .animation(Animation.linear, value: 2)
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
