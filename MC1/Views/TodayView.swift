//
//  TodayView.swift
//  MC1
//


import SwiftUI

struct TodayView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {}.navigationTitle("Hi there!").toolbar{
                    Button("Journal") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        JournalView()
                    }.animation(Animation.linear, value: 2)
                }
            
        }
    }
}


struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
