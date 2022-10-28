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
    @State private var showing: Bool = false
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("myBackground").ignoresSafeArea()
                ScrollView(){
                    ForEach(entries, id:\.id) { entry in
                        if (entry.mood == detail.archiveName || detail.archiveName == "All"){
                            VStack(alignment: .leading, spacing: 24){
                                Divider()
                                
                                
                                Text(entry.date!, style: .date)
                                    .fontWeight(.bold)
                                    .padding(.top, 16).onAppear{showing = true}
                                if (entry.mood != ""){
                                    Text("Your mood for the day: " + (entry.mood ?? "you haven't selected any mood"))
                                }
                                else {
                                    Text("You haven't selected any mood for the day...")
                                }
                                if (entry.smallText != "" || entry.bigText != ""){
                                    Text("Journal: ")
                                }
                                Text((entry.smallText ?? "Error"))
                                Text((entry.bigText ?? "Error"))
                            }
                            .padding(.horizontal)
                        }
                        else {
                            if (entry == entries.last && showing == false){
                                Text("There's nothing here...")
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
        ArchiveDetailView(detail: ArchiveCard(archiveIcon: "🤩", archiveName: "All"))
    }
}
