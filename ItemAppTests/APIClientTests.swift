//
//  APIClientTests.swift
//  ItemAppTests
//
//  Created by saeed shaikh on 22/05/25.
//

import XCTest
@testable import ItemApp

final class APIClientTests: XCTestCase {
   func test_books_should_return_first_book() async throws {
      let apiClient = APIClient()
      let books = try await apiClient.books()
      XCTAssertEqual(
         books.first?.title,
         "Frankenstein; Or, The Modern Prometheus",
         "❌ Expected title to be 'Frankenstein; Or, The Modern Prometheus' but got '\(books.first?.title ?? "nil")'"
      )
   }
   
   func test_books_should_return_last_book() async throws {
      let apiClient = APIClient()
      let books = try await apiClient.books()

      XCTAssertEqual(
         books.last?.title,
         "Adventures of Huckleberry Finn",
         "❌ Expected title to be 'Adventures of Huckleberry Finn' but got '\(books.first?.title ?? "nil")'"
      )
   }
}

