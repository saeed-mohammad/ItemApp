//
//  Item.swift
//  ItemApp
//
//  Created by saeed shaikh on 20/05/25.
//

import Foundation

struct Item: Identifiable {
    var name: String
    var id: UUID
    
    
    init(name: String, id: UUID = UUID()) {
        self.name = name
        self.id = id
    }
    
    static var examples: [Item] {
        [Item(name: "first"), Item(name: "second"), Item(name: "third")]
    }
}


