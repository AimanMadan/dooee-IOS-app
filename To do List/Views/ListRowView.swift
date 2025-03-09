//
//  ListRowView.swift
//  To do List
//
//  Created by Aiman on 3/9/25.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    var body: some View {
        HStack{
            Text(title)
            // Sets items to the left
            Spacer()
            // Import check mark icon
            Image(systemName: "checkmark.circle")
        }
    }
}


#Preview {
    ListRowView(title: "task")
}
