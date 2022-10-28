//
//  BottonBrowseAct.swift
//  MoodTracker
//
//  Created by benedetta on 24/10/22.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

struct ButtonBrowseAct: View {
    var body: some View {
        
        Text("Browse activity")
            .fontWeight(.semibold)
            .foregroundColor(.accentColor)
            .frame(width: screenWidth-32, height: 50)
            .background(Color("myGray"))
            .cornerRadius(14)
        
        
    }
}

struct BottonBrowseAct_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBrowseAct()
    }
}
