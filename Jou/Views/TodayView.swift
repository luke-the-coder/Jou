//
//  TodayView.swift
//  MC1
//
import SwiftUI

struct TodayView: View {
    @ObservedObject var emojiVM = EmojiViewModel()
    @State private var moodToStore : String = ""
    @State private var showingSheet = false
    @State private var showingSheetActivity = false
    @State private var emotionSheet = false
    @State private var selectedEmoji: SheetStruct?
    @State private var selectedActivity: Activity?
    
    @State var moodSelect: MoodType = .sad
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color("myBackground").ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    Text("How do you feel today?").padding(.leading, 17)
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        //benny
                        HStack(spacing: 20) {
                            
                            ForEach(Array(emojiVM.emojis.enumerated()), id: \.offset) { index, emoji in
                                Button {
                                    emojiVM.selectEmoji(at: index)
                                    selectedEmoji = emoji
                                    moodToStore = selectedEmoji!.title
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
                            
                        }.padding(.trailing, 16)
                            .navigationTitle("Hi there!")
                            .toolbar{
                                Button("Journal") {
                                    showingSheet.toggle()
                                }
                                .sheet(isPresented: $showingSheet) {
                                    JournalView(moodToStore: $moodToStore)
                                }
                                .animation(Animation.linear, value: 2)
                            }
                        
                    }.padding(.leading, 15)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 24){
                        
                        Text("Suggested for you").padding(.leading, 17)
                            .font(.title2)
                            .bold()
                            .padding(.top, 24)
                        List {
                            ForEach(activityResults, id: \.id) { card in
                                ActivityListView(card: card)
                                    .onTapGesture {
                                        selectedActivity = card
                                        self.showingSheetActivity.toggle()
                                    }
                                    .sheet(item: $selectedActivity) { selectedActivity in
                                        ActivitySheetView(activitySheet: selectedActivity)
                                            .presentationDetents([.height(350)])
                                    }
                                
                            }
                            .padding(.vertical, 4)
                        }
                        .scrollContentBackground(.hidden)
                        .scrollDisabled(true)
                        .padding(EdgeInsets(top: -48, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                }
                
            }
            
            
            
            
            
            
        }
        
    }
    
    var activityResults: [Activity] {
        let activityNeutral = activity.filter { $0.mood == .neutral }
        var activityNeutralElement = activityNeutral.randomElement()
        var activityNeutralCustom = activity.filter { $0.mood == moodSelect }
        activityNeutralCustom.insert(activityNeutralElement!, at: 0)
        return activityNeutralCustom
    }
}


struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
