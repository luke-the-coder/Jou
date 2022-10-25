//
//  EmojiStruct.swift
//  MoodTracker
//
//  Created by benedetta on 24/10/22.
//
import Foundation
import SwiftUI

struct EmojiStruct : Identifiable {
    
    var id: UUID = UUID()
    var emoji: String
    var title: String
    var isSelected: Bool
    
}
