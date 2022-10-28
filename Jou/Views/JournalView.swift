//
//  JournalView.swift
//  MC1
//

import SwiftUI
import CoreData

struct JournalView: View {
    @Binding var moodToStore : String

    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.dismiss) var dismiss
    @State private var isPresentingConfirm: Bool = false

    @FetchRequest(entity: JournalEntry.entity(), sortDescriptors: [])
    private var entries: FetchedResults<JournalEntry>
    
    @State private var textOne: String = ""
    @State private var textTwo: String = ""
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading, spacing: 16){
                
                
                Text("What happened today?").bold().padding([.leading], 16)
                    .padding(.top, 24)
                
                TextField(
                    "Text...",
                    text: $textOne
                ).padding([.leading, .trailing], 16).textFieldStyle(.roundedBorder)
                
                Text("Do you want to say something more?").bold().padding([.leading, .top], 16)
                
                ZStack(alignment: .topLeading){
                    TextEditor(text: $textTwo)
                        .frame(minHeight: 50, maxHeight: 200).border(Color(red: 0.965, green: 0.965, blue: 0.965), width: 2).padding(.horizontal, 16).cornerRadius(2)
                    if textTwo.isEmpty {
                        HStack{
                            Text("Write something...").foregroundColor(Color(red: 0.772, green: 0.777, blue: 0.785))
                                .padding([.leading], 24).padding([.top], 8)
                        }
                    }
                }
                Spacer()
            }.navigationBarTitleDisplayMode(.inline).toolbar{
                ToolbarItem(placement: .navigationBarTrailing){ Button("Done") {
                    addText()
                    dismiss()
                }
                }
                ToolbarItem(placement: .principal){
                    Text("Journal").bold().accessibilityAddTraits(.isHeader)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel", role: .destructive){
                        isPresentingConfirm = true
                      }
                     .confirmationDialog("Are you sure you want to discard this journal?",
                                         isPresented: $isPresentingConfirm, titleVisibility: .visible) {
                         Button("Discard Changes", role: .destructive) {
                             dismiss()
                         }
                         Button("Keep Editing", role: .cancel) {}
                      }
                }
            }
 
        }

    }
    private func addText() {
        
        withAnimation {
            let journal = JournalEntry(context: viewContext)
            journal.id = UUID()
            journal.date = Date.now
            journal.smallText = textOne
            journal.bigText = textTwo
            journal.mood = moodToStore
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try viewContext.save()
            print("done")
        } catch {
            let error = error as NSError
            print("error")
            fatalError("An error occured: \(error)")
        }
    }
    private func deleteContext(){
        
    }
}


struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        let context =  JouApp().persistenceController.container.viewContext
        return JournalView(moodToStore: .constant("test")).environment(\.managedObjectContext, context)
    }
}
