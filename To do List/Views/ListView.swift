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
            "Setup zoom call with Ava",
            "Get a room for AI club",
            "Update the AI club discord server",
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
        .listStyle(InsetGroupedListStyle())
        // Title
        .navigationBarTitle("dooee 🐛")
        // Navigation bar items
        .navigationBarItems(
            //left item
            leading: EditButton(), // edit
            // right item
            trailing:
                // intent(name, view)
                NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    
}

