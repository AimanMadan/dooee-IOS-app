//
//  ListRowView.swift
//  To do List
//
//  Created by Aiman on 3/9/25.
//
import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        //Horizontol stack
        HStack{
            Text(item.title)
            // Sets items to the left
            Spacer()
            // Import check mark icon
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" :"circle") // Add condition to change the task image
                // Fill the background with green color if coompleted
                .foregroundColor(item.isCompleted ? .green : .gray)
            
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    // Pending tasks
    static let item1 = ItemModel(title: "First Item", isCompleted: false)
    // Completed tasks
    static let item2 = ItemModel(title: "Second Item", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            
        }
        .previewLayout(.sizeThatFits)
    }
}

