//
//  TodayView.swift
//  MC1
//
import SwiftUI

struct TodayView: View {
    
    @State var viola: Color = .accentColor
    
    //@ObservedObject var emojiViewModel = EmojiViewModel()
    
    @State private var showingSheet = false
    
    @State private var emotionSheet = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color("myBackground").ignoresSafeArea()
                VStack(alignment: .leading) {
                    Text("How do you feel today?").padding(.leading, 17)
                    ScrollView(.horizontal, showsIndicators: false) {
                        //benny
                        HStack(spacing: 20) {
                            
                            ForEach(emojis) { emoji in
                                Button {
                                    
                                    emotionSheet.toggle()
                                
                                } label: {
                                    
                                    EmojiView(emojiButton: emoji)
                                        .foregroundColor(.primary)
                                    
                                }
                                .sheet(isPresented: $emotionSheet) {
                                    
                                    SheetViews(emotion: emoji)
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
