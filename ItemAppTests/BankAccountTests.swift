//
//  BankAccount.swift
//  ItemAppTests
//
//  Created by saeed shaikh on 21/05/25.
//

import XCTest
@testable import ItemApp

final class BankAccountTests: XCTestCase {
   
   func test_deposit_mony_to_bank_account() async throws{
      let bankAccount = BankAccountViewModel(accountHolder:"sid",accountNumber:"123456", balance:100)
      bankAccount.deposite(100)
      XCTAssertEqual(bankAccount.balance, 200, "Balance should be expected the 200")
   }
   
   func test_withdraw_mony_from_bank_account() async throws{
      let bankAccount = BankAccountViewModel(accountHolder:"sid",accountNumber:"123456", balance:100)
      //        try bankAccount.withdraw(100)
      //        XCTAssertEqual(bankAccount.balance, 0.0, "Balance should be expected the 0.0")
      do{
         try bankAccount.withdraw(100)
         //            XCTFail("Expected to throw an insufficientBalance error, but it didn’t throw")
         XCTAssertEqual(bankAccount.balance, 0.0, "Balance should be expected the 0.0")
      }catch{
         XCTFail("Unexpected error: \(error)")
      }
   }
   
   func test_throw_insufficient_balance_error() async throws {
      let bankAccount = BankAccountViewModel(accountHolder:"sid",accountNumber:"123456", balance:100)
      
      // little complex so use that way using another method
      //        XCTAssertThrowsError(try bankAccount.withdraw(200)){error in
      //            XCTAssertEqual(error as? BankError, BankError.insufficientBalance)
      //        }
      
      do{
         try bankAccount.withdraw(500)
         XCTFail("Expected to throw an insufficientBalance error, but it didn’t throw")
      } catch let error as BankError {
         XCTAssertEqual(error, .insufficientBalance)
      }catch{
         XCTFail("Unexpected error: \(error)")
      }
      
   }
   
}
