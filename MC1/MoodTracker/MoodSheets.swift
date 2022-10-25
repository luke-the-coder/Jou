//
//  MoodSheets.swift
//  MoodTracker
//
//  Created by benedetta on 20/10/22.
//

import SwiftUI

struct MoodSheets: View {
    
    var emoji: String = ""
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(40)
                .frame(height: 400)
                .ignoresSafeArea()
            Text(emoji)
                .font(.title)
            /* .gesture(
             DragGesture()
                 .onChanged{
                     value in
                 }
         )*/
        }
        
        .ignoresSafeArea()

        
    }
    
}



struct MoodSheets_Previews: PreviewProvider {
    static var previews: some View {
        MoodSheets()
    }
}
