//
//  ActivityCard.swift
//  testList
//
//  Created by Francesca Napolitano on 25/10/22.
//

import Foundation
import SwiftUI

enum MoodType: String{
    case neutral, happy, surprised, scared, disgusted, angry, sad
}

struct Activity: Identifiable {
    var id: UUID = UUID()
    var mood: MoodType
    var activityIcon: String
    var activityColor: Color
    var activityName: String
    var activitySub: String
    var description: Text
}
