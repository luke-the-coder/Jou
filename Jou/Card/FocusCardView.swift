//
//  FocusCardView.swift
//  MC1
//
//  Created by Francesca Napolitano on 24/10/22.
//

import SwiftUI

struct FocusCardView: View {
    
    var card: FocusCard
    
    var body: some View {
        ZStack {
            HStack(spacing: 13) {
                Image(systemName: card.focusIcon)
                    .font(.system(size: 25.0))
                    .foregroundColor(card.focusColor)
                    .padding(.leading, 16)
                VStack(alignment: .leading, spacing: 3){
                    Text(card.focusName)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    HStack{
                        Image(systemName: "clock")
                            .foregroundColor(.secondary)
                        Text("\(card.time) min")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical, 18)
                Spacer()
                Image(systemName: "chevron.right")
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .padding(.trailing, 16)
            }
            .background(Color("myCard"))
            .cornerRadius(14)
            .padding(.horizontal, 16)
        }
    }
}

struct FocusCardView_Previews: PreviewProvider {
    static var previews: some View {
        FocusCardView(card: FocusCard(focusIcon: "person.wave.2.fill", focusColor: Color("myTeal"), focusName: "Mindfulness", time: 2, article: Text("**Mindfulness** is a way of paying attention to the present moment, using techniques like meditation, breathing and yoga. It helps us become more aware of our thoughts and feelings so that, instead of being overwhelmed by them, we’re better able to manage them.\n\n**Mindfulness** can be used as a tool to manage your well-being and mental wellness. We all have times when we feel down, stressed or frightened; most of the time, those feelings pass, but sometimes they develop into a more serious problem, which could happen to any one of us.\n\nWhile research is still growing in the area of mindfulness, evidence has suggested the benefit of **mindfulness** to health and wellbeing, with results showing positive effects on several aspects of whole-person health, including the mind, the brain, the body, and behaviour, as well as a person’s relationships with others.\n\n**Mindfulness** has also been shown to help with many conditions, including stress, anxiety, depression and physical problems like hypertension, heart disease and chronic pain.")))
    }
}
