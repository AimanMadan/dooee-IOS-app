//
//  ListView.swift
//  To do List
//
//  Created by Aiman on 3/8/25.
//

import SwiftUI

struct ListView: View {
    
    // Data array
    @State var items: [ItemModel] = [
        ItemModel(title: "Setup a meeting with Ava", isCompleted: false),
        ItemModel(title: "Submit CA11", isCompleted: true),
        ItemModel(title: "Update club's server", isCompleted: false),
    ]
    
    
    var body: some View {
        // List View
        List {
            ForEach(items) { item in
                ListRowView(item: ItemModel(title: item.title, isCompleted: item.isCompleted))
            }
        }
        
        // list styles
        .listStyle(InsetGroupedListStyle()  )
        // Title
        .navigationBarTitle("Dooee 🐛")
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

