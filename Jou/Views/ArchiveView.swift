import SwiftUI

struct ArchiveView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var archiveCard = [
        ArchiveCard(archiveIcon: "🤩", archiveName: "All", archiveDays: 10),
        ArchiveCard(archiveIcon: "😁", archiveName: "Happy", archiveDays: 2),
        ArchiveCard(archiveIcon: "😲", archiveName: "Surprised", archiveDays: 2),
        ArchiveCard(archiveIcon: "😰", archiveName: "Scared", archiveDays: 2),
        ArchiveCard(archiveIcon: "🤢", archiveName: "Disgusted", archiveDays: 2),
        ArchiveCard(archiveIcon: "😠", archiveName: "Angry", archiveDays: 2),
        ArchiveCard(archiveIcon: "😢", archiveName: "Sad", archiveDays: 2)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("myBackground")
                    .ignoresSafeArea()
                ScrollView{
                    VStack(spacing: 24) {
                        ForEach(archiveCard) { card in
                            NavigationLink( destination: ArchiveDetailView(detail: card)){
                                ArchiveCardView(card: card)
                            }
                            
                        }
                    }
                }
                    
            }
            .navigationTitle("Archive")
        }
    }
}

struct ArchiveView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveView()
    }
}
