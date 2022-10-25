//
//  SheetStruct.swift
//  MoodTracker
//
//  Created by benedetta on 24/10/22.
//
import Foundation

import SwiftUI

struct SheetStruct : Identifiable {
  
    var id: UUID = UUID()
    var titleCard: String
    var subTitleCard: String
    var emojiCard: String
    var description: String
    
    
}
