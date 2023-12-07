//
//  ListViewModel.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 5/12/23.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []{
        /// Instead of calling saveItems in all functions
        /// we can call here using didset so if items
        /// is changed anyhow didSet will get called automatically
        didSet{
            saveItem()
        }
    }
    
    
    let itemsKey: String = "items_key"
    
    init() {
        getItems()
    }
    
    func getItems() {
        /// WE can write multiple guard statement one by one
        /// IF any of the guard is failed it will return
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) /// decode to ItemModel Array
        else { return }
        
        items.self = savedItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { existingItem in
            return existingItem.id == item.id
        }) {
            /// This is a new itemmodel with previous title and new id UUID
            /// But we wanted to update our existing ``item`` on that position
            /// So we have to do all the update and model modification on model file itself
            //items[index] = ItemModel(title: item.title, isCompleted: !item.isCompleted)
            items[index] = item.updateCompletion()
        }
        
        /// shorter version
//        if let index = items.firstIndex(where: { $0.id == item.id }) {
//            
//        }
        
    }
    
    func saveItem() {
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}
