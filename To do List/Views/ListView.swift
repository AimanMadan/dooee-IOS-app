//
//  ListView.swift
//  To do List
//
//  Created by Aiman on 3/8/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        // Data array
        @State var items: [String] = [
            "Apple",
            "Banana",
            "Orange",
            "Mango",
            "Pineapple"
        ]
        
        
        // List View
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        // list styles
        .listStyle(DefaultListStyle())
        // Title
        .navigationBarTitle("dooee 🐛")
        // Edit and Add buttons
        .navigationBarItems(
            leading: EditButton(), // edit
            trailing:
                NavigationLink("Add", destination: Text("SwiftUI📱"))) // intent
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    
}

