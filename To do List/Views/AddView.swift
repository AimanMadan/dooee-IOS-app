//
//  AddView.swift
//  To do List
//
//  Created by Aiman  on 3/9/25.
//

import SwiftUI

struct AddView: View {
    // Input field variable
    @State private var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                //Input field (hint, inputType)
                TextField("Add new a task...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .textFieldStyle(DefaultTextFieldStyle())
                // Save button
                Button(action: {
                }, label: {
                    Text("Save".uppercased())
                        // styles
                        .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 30)            .background(Color.accentColor)
                        .cornerRadius(15)
                        .padding(.vertical)
                })
                
                
            }
            .padding(14)
        }
        .navigationTitle(Text("Dooee"))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    
}
