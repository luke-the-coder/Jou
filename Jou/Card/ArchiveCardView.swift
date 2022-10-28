//
//  ArchiveCardView.swift
//  MC1
//
//  Created by Francesca Napolitano on 24/10/22.
//

import SwiftUI

struct ArchiveCardView: View {
    
    var card: ArchiveCard
    
    var body: some View {
        ZStack {
            HStack(spacing: 13) {
                Text(card.archiveIcon)
                    .font(.system(size: 35.0))
                    .padding(.leading, 16)
                VStack(alignment: .leading, spacing: 3){
                    Text(card.archiveName)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                }
                .padding(.vertical, 30)
                Spacer()
                Image(systemName: "chevron.right")
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .padding(.trailing, 16)
            }
            .background(Color(UIColor.tertiarySystemBackground))
            .cornerRadius(14)
            .padding(.horizontal, 16)
        }
    }
}

struct ArchiveCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveCardView(card: ArchiveCard(archiveIcon: "🤩", archiveName: "All"))
    }
}
