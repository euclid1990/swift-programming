//
//  ObjectOrientedProgramming.swift
//  Swift Programming for Mobile App Development 
//
//  Created by nguyen.van.vuong on 27/10/2022.
//

import Foundation

class BankAccount {
 
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    init(number: Int, balance: Float)
    {
        accountNumber = number
        accountBalance = balance
    }
    
    deinit {
        // Perform any necessary clean up here
        print("Clean Up")
    }
 
    func displayBalance()
    {
       print("Number \(accountNumber)")
       print("Current balance is \(accountBalance)")
    }
 
    class func getMaxBalance() -> Float {
        return 100000.00
    }
    
    func addTen(accountNumber: Int) {
        print("accountNumber = \(accountNumber)") // Output the function parameter value
        print("self.accountNumber = \(self.accountNumber)") // Output the class property value
        
        let add = { (money: Float) -> Float in
            money + self.accountBalance
        }
        
        print("Use of self is mandatory in closure expressions: \(add(1000))")
    }
    
    var balanceLessFees: Float {
        get {
            return accountBalance - fees
        }
        
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
}

class ComputedAndLazyProperties {
    
    // A property may be initialized using a closure
    var myProperty: String = {
       // var result = resourceIntensiveTask()
        print("Normal: Pretending to perform a resource intensive task")
        return "My Property"
    }()
    
    lazy var myLazyProperty: String = {
        // var result = resourceIntensiveTask()
        print("Lazy: Pretending to perform a resource intensive task")
        return "My Lazy Property"
    }()
}

protocol MessageBuilderProtocol {

    var name: String { get }
    func buildMessage() -> String
}

class MyMessageBuilder: MessageBuilderProtocol {
    
    var name: String
    
    init(name: String) {
      self.name = name
    }
    
    func buildMessage() -> String {
        "Hello " + name
    }
    
    // Opaque return types
    func doubleFunc(value: Int) -> some Equatable {
        value + value
    }
}

class SavingsAccount: BankAccount {

    var interestRate: Float
    
    // Required
    init(number: Int, balance: Float, rate: Float)
    {
        interestRate = rate
        super.init(number: number, balance: balance)
    }

    func calculateInterest() -> Float
    {
        return interestRate * accountBalance
    }

    override func displayBalance()
    {
         super.displayBalance()
         print("Prevailing interest rate is \(interestRate)")
    }
}

extension Double {

    var squared: Double {
        return self * self
    }

    var cubed: Double {
        return self * self * self
    }
}

class ObjectOrientedProgramming {
    init() {
        print("=============================================")
        print("Swift Object-Oriented Programming")
        print("---------------------------------------------")
    }
    
    func bankAccount() {
        var bankAccount: BankAccount = BankAccount(number: 12312312, balance: 505.5)
        
        bankAccount.displayBalance()
        
        // Display the current balance via the accountBalance property
        print("Current balance = \(bankAccount.accountBalance)")

        // Assign a new balance to the accountBalance property
        bankAccount.accountBalance = 6789.98

        // Call the displayBalance() method to output the current balance
        bankAccount.displayBalance()
        
        // Display max balance by type class method
        BankAccount.getMaxBalance()
        
        bankAccount.addTen(accountNumber: 10)
        
        print("Balance less fees = \(bankAccount.balanceLessFees)")

        bankAccount.balanceLessFees = 50
        print("Balance account = \(bankAccount.accountBalance)")
        print("Balance less fees = \(bankAccount.balanceLessFees)")
    }
    
    func computeLazyProperties() {
        let myObject1 = ComputedAndLazyProperties()
        let myObject2 = ComputedAndLazyProperties()
        let myObject3 = ComputedAndLazyProperties()
        print(myObject2.myLazyProperty)
    }
    
    func protocolType() {
        let myObject = MyMessageBuilder(name: "John")
        print(myObject.buildMessage())
        let result = myObject.doubleFunc(value: 10)
        print("Result = \(result)")
    }
    
    func overrideMethod() {
        let savings1 = SavingsAccount(number: 12311, balance: 600.00, rate: 0.07)
        print(savings1.calculateInterest())
        savings1.displayBalance()
    }
    
    func extensionFunctionality() {
        let myValue: Double = 3.0
        print(myValue.squared)
        print(4.0.cubed)
    }
    
    func run() {
        self.bankAccount()
        self.computeLazyProperties()
        self.protocolType()
        self.overrideMethod()
        self.extensionFunctionality()
    }
}
