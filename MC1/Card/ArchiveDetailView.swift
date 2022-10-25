//
//  SwiftUIView.swift
//  MC1
//
import SwiftUI

struct ArchiveDetailView: View {
    
    var detail: ArchiveCard
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("myBackground")
                    .ignoresSafeArea()
                VStack(spacing: 16) {
                    Text(detail.archiveIcon)
                        .font(.system(size: 70.0))
                        .padding(.top, 16)
                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Placeholder date")
                                    .fontWeight(.bold)
                                    .padding(.top, 16)
                                Text(detail.journal)
                                    .font(.body)
                                    .padding(.bottom, 16)
                            }
                            
                            .padding(.horizontal, 16)
                            .background(Color(UIColor.tertiarySystemBackground))
                            .cornerRadius(14)
                        
                            
                        }
                        Spacer()
                    }
                    
                }
                
                
            }
            .navigationTitle(detail.archiveName)
        }
    }
}

struct ArchiveDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveDetailView(detail: ArchiveCard(archiveIcon: "🤩", archiveName: "All", archiveDays: 10, journal: "..."))
    }
}
