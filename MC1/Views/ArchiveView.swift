//
//  ArchiveView.swift
//  MC1
//
import SwiftUI

struct ArchiveView: View {
    @FetchRequest(sortDescriptors: []) var entry: FetchedResults<JournalEntry>
    
    var body: some View{
        VStack(){
            List(entry) { entry in
                Text(entry.bigText ?? "Unknown")
            }
        }
    }
}

struct ArchiveView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveView()
    }
}
