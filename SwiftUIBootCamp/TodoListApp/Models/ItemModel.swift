//
//  ItemModel.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 29/11/23.
//

import Foundation

/// have to make it identifiable
///
/// This is immutable struct, all of the items are let
/// codable is decodable and encodable
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}
