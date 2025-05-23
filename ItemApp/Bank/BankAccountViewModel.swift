//
//  BankAccountViewModel.swift
//  ItemApp
//
//  Created by saeed shaikh on 21/05/25.
//

import Foundation
//https://gutendex.com/books
enum BankError: Error {
    case insufficientBalance
    case wentWrong
}

final class BankAccountViewModel: ObservableObject{
    
    let accountHolder: String
    let accountNumber: String
    @Published var balance: Decimal
    
    init(accountHolder: String, accountNumber: String, balance: Decimal = 0.0) {
        self.accountHolder = accountHolder
        self.accountNumber = accountNumber
        self.balance = balance
    }
    
    func deposite(_ amount: Decimal) {
        balance += amount
    }
    
    func withdraw(_ amount: Decimal) throws {
        guard balance >= amount else {
            throw BankError.insufficientBalance
        }
        balance -= amount
    }
}
