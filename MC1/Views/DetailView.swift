//
//  DetailView.swift
//  MC1
//
import SwiftUI

struct DetailView: View {
    
    var detail: FocusCard
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("myBackground")
                    .ignoresSafeArea()
                    VStack(spacing: 16) {
                        Image(systemName: detail.focusIcon)
                            .font(.system(size: 70.0))
                            .foregroundColor(detail.focusColor)
                            .padding(.top, 16)
                        ScrollView {
                            VStack(alignment: .trailing, spacing: 16) {
                                HStack(spacing: 8) {
                                    Image(systemName: "clock")
                                        .foregroundColor(.accentColor)
                                    Text("\(detail.time) min")
                                        .foregroundColor(.accentColor)
                                        .fontWeight(.bold)
                                }
                                Text("\(detail.article)")
                                
                            }.padding(.horizontal, 16)
                            
                        }
                        Spacer()
                    }
            
            }
            .navigationTitle(detail.focusName)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detail: FocusCard(
            focusIcon: "person.wave.2.fill",
            focusColor: Color("myTeal"),
            focusName: "Mindfulness",
            time: 2,
            article: Text("**Mindfulness** is a way of paying attention to the present moment, using techniques like meditation, breathing and yoga. It helps us become more aware of our thoughts and feelings so that, instead of being overwhelmed by them, we’re better able to manage them.\n\n**Mindfulness** can be used as a tool to manage your well-being and mental wellness. We all have times when we feel down, stressed or frightened; most of the time, those feelings pass, but sometimes they develop into a more serious problem, which could happen to any one of us.\n\nWhile research is still growing in the area of mindfulness, evidence has suggested the benefit of **mindfulness** to health and wellbeing, with results showing positive effects on several aspects of whole-person health, including the mind, the brain, the body, and behaviour, as well as a person’s relationships with others.\n\n**Mindfulness** has also been shown to help with many conditions, including stress, anxiety, depression and physical problems like hypertension, heart disease and chronic pain.")))
    }
}
