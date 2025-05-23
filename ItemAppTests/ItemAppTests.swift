//
//  ItemAppTests.swift
//  ItemAppTests
//
//  Created by saeed shaikh on 20/05/25.
//

import XCTest
@testable import ItemApp

final class ItemAppTests: XCTestCase {
    
    func test_items_when_removelast_then_items_count_lowered() async throws {
        let vm = ItemViewModel()
        let count = vm.item.count

        vm.removeLast()
        
        XCTAssertEqual(vm.item.count, count - 1, "Expected that the array has reduce \(count-1) items")
        XCTAssertFalse(vm.deleteDisable, "Expected the false value")

        

    }
    
    func test_no_items_remove_disabled() async throws{
        let vm = ItemViewModel()
        for _ in vm.item{
            vm.removeLast()
        }
        XCTAssertTrue(vm.deleteDisable, "Delete should not be allowed when we have no items")
    }
    
    func test_no_items_when_remove_button_then_then_nothing_happen() async throws{
        let vm = ItemViewModel()
        vm.item = []
        vm.removeLast()
        
        XCTAssertTrue(vm.item.isEmpty, "expected removeLast function return safely on empty array")
    }



}
