//
//  ActivityListView.swift
//  MC1
//
//  Created by benedetta on 27/10/22.
//

import SwiftUI

struct ActivityListView: View {
    
    var card: Activity
    
    var body: some View {
    
        
        HStack(spacing: 16) {
            HStack {
                Image(systemName: card.activityIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .foregroundColor(card.activityColor)
            }
            VStack(alignment: .leading) {
                Text(card.activityName)
                    .fontWeight(.semibold)
                Text(card.activitySub)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(systemName: "chevron.right")
                                .fontWeight(.medium)
                                .foregroundColor(.secondary)
                                .padding(.trailing, 10)
        }
    }
}

struct ActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListView(card: Activity(mood: .neutral, activityIcon: "play.fill", activityColor: Color("myRed"), activityName: "Movie night", activitySub: "Daily activity", description: Text("Re-watch your favourite movie or a film that you really enjoyed. If you have the opportunity to watch it with somene else it’s even better!")))
    }
}
