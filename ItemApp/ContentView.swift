//
//  ContentView.swift
//  ItemApp
//
//  Created by saeed shaikh on 20/05/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ItemViewModel
    
    var body: some View {
        VStack{
            ScrollView{
                ForEach(viewModel.item){ item in
                    Text(item.name)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Capsule().fill(Color.yellow))
                        .accessibilityIdentifier("item.\(item)")
                }
            }
            Divider()
            Button("Remove Last") {
                viewModel.removeLast()
            }
            .buttonStyle(.borderedProminent)
            .disabled(viewModel.deleteDisable)
            .accessibilityIdentifier("delete.button")
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ItemViewModel())
}
