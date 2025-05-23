//
//  APIClient.swift
//  ItemApp
//
//  Created by saeed shaikh on 22/05/25.
//

import Foundation

class APIClient{
   //https://gutendex.com/books
   func books() async throws -> [Book] {
      guard let url = URL(string: "https://gutendex.com/books") else {throw URLError(.badURL)}
      let (data, _) = try await URLSession.shared.data(from: url)
      do {
         let response = try JSONDecoder().decode(BookResponse.self, from: data)
         return response.results!
      }catch{
         print("Unexpected error: \(error.localizedDescription)")
         throw error
      }
   }
}
