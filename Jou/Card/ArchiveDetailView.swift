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
                            VStack(alignment: .leading, spacing: 16){
                                Divider().opacity(0)
                                    
                                
                                Text(entry.date!, style: .date)
                                    .fontWeight(.bold)
                                    .padding(.top, 8).onAppear{showing = true}
                                if (entry.mood != ""){
                                    Text("Your mood for the day: " + (entry.mood ?? "you haven't selected any mood"))
                                }
                                else {
                                    Text("You haven't selected any mood for the day...")
                                }
                                
                                Text((entry.smallText ?? "Error"))
                                Text((entry.bigText ?? "Error"))
                                    .padding(.bottom, 24)
                            }.padding(.horizontal, 16)
                            //.padding(.horizontal)
                        }
                        else {
                            if (entry == entries.last && showing == false){
                                Text("There's nothing here...")
                            }
                        }
                    }.frame(width: screenWidth-32)
                        .background(Color("myCard"))
                        .cornerRadius(14)
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
