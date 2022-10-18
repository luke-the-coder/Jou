//
//  ContentView.swift
//  MC1
//


import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var textOne: String = ""
    @State private var textTwo: String = ""

    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 16){
                
                Text("What happened today?").bold().padding([.leading], 16)
                
                TextField(
                    "Text...",
                    text: $textOne
                ).padding([.leading, .trailing], 16).textFieldStyle(.roundedBorder)
                
                Text("Do you want to say something more?").bold().padding([.leading, .top], 16)
                
                TextEditor(text: $textTwo)
                     .frame(minHeight: 50, maxHeight: 200).padding([.leading], 16).foregroundColor(Color.gray)


                Text("Feel free to write what you want, you're in a safe place.").frame(alignment: .center).padding().font(.footnote)
                Spacer()
            }.navigationBarTitleDisplayMode(.inline).toolbar{
                ToolbarItem(placement: .navigationBarTrailing){ Button("Done") {
                    dismiss()
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("Journal").bold().accessibilityAddTraits(.isHeader)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {

            }
            .navigationTitle("Hi there!")
            .toolbar{
                Button("Journal") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
            }
            
        }
    }
    var prefersStatusBarHidden: Bool = false
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
