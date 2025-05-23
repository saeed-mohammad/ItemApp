//
//  ItemViewModel.swift
//  ItemApp
//
//  Created by saeed shaikh on 20/05/25.
//

import Foundation

final class ItemViewModel: ObservableObject {
    @Published var item: [Item] = Item.examples
    @Published var deleteDisable = false
    
    func removeLast(){
        guard item.isEmpty == false else {return}
        item.removeLast()
        deleteDisable = item.isEmpty
    }
    
}
