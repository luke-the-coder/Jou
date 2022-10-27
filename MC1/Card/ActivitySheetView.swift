//
//  ActivitySheetView.swift
//  testList
//
//  Created by Francesca Napolitano on 27/10/22.
//

import SwiftUI

struct ActivitySheetView: View {

    var activitySheet: Activity

    var body: some View {
        ZStack {

            VStack{

                Text(activitySheet.activityName)
                    .bold()
                    .font(.title)
                    .padding(.top, 40)
                    .padding(.bottom, 4)
                Text("\(activitySheet.description)")
                    .font(.body)
                    .padding(.bottom, 24)
                    .padding(.horizontal, 16)
                Image(systemName: activitySheet.activityIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(activitySheet.activityColor)

                Spacer()

            }
        }
    }
}

struct ActivitySheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySheetView(activitySheet: Activity(mood: .happy, activityIcon: "pencil.and.outline", activityColor: Color("myLightBlue"), activityName: "Draw a line", activitySub: "Activity", description: Text("Try to draw a line between you and people who want to complain and vent their problems on you, without giving even a few seconds of listening in return.\n\nTurn your attention elsewhere and no longer give weight to the words of these 'parasites'.")))
    }
}
