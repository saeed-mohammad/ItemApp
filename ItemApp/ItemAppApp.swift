//
//  ItemAppApp.swift
//  ItemApp
//
//  Created by saeed shaikh on 20/05/25.
//

import SwiftUI

@main
struct ItemAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ItemViewModel())
        }
    }
}
