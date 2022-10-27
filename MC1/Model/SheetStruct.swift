//
//  SheetStruct.swift
//  MoodTracker
//
//  Created by benedetta on 24/10/22.
//

import SwiftUI

struct SheetStruct : Identifiable {
  
    var id: UUID = UUID()
    var titleCard: String
    var subTitleCard: String
    
    var description: String
    var emoji: String
    var title: String
    var isSelected: Bool
    
    
}
