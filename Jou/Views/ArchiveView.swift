import SwiftUI

struct ArchiveView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var archiveCard = [
        ArchiveCard(archiveIcon: "🤩", archiveName: "All"),
        ArchiveCard(archiveIcon: "😁", archiveName: "Happy"),
        ArchiveCard(archiveIcon: "😲", archiveName: "Surprised"),
        ArchiveCard(archiveIcon: "😰", archiveName: "Scared"),
        ArchiveCard(archiveIcon: "🤢", archiveName: "Disgusted"),
        ArchiveCard(archiveIcon: "😠", archiveName: "Angry"),
        ArchiveCard(archiveIcon: "😢", archiveName: "Sad")
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
