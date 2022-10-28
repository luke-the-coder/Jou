//
//  SwiftUIView.swift
//  MC1
//
import SwiftUI
import Foundation
import UIKit

struct ArchiveDetailView: View {
    @FetchRequest(sortDescriptors: []) var entries: FetchedResults<JournalEntry>
    
    var detail: ArchiveCard
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("myBackground").ignoresSafeArea()
                List(selection: $singleSelection){
                    ForEach(entries) { entry in
                        if (entry.mood == detail.archiveName || detail.archiveName == "All"){
                            VStack(alignment: .leading, spacing: 8){
                                Text(entry.date!, style: .date)
                                    .fontWeight(.bold)
                                    .padding(.top, 16)
                                Text("Your mood for the day: " + (entry.mood ?? "you haven't selected any mood"))
                                Text("You entered: ")
                                Text(entry.smallText ?? "Error")
                                Text(entry.bigText ?? "Error")
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
        .navigationTitle(detail.archiveName + " " + detail.archiveIcon)
    }
}

struct ArchiveDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveDetailView(detail: ArchiveCard(archiveIcon: "🤩", archiveName: "All")
    )}
}
