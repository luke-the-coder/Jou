//
//  FocusCard.swift
//  MC1
//
//  Created by Francesca Napolitano on 21/10/22.
//

import Foundation
import SwiftUI

struct FocusCard: Identifiable {
    var id: UUID = UUID()
    var focusIcon: String
    var focusColor: Color
    var focusName: String
    var time: Int
    var article: Text
}
