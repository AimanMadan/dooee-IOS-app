//
//  ItemModel.swift
//  To do List
//
//  Created by Aiman  on 3/9/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
