//
//  OperatorsAndExpressions.swift
//  Swift Programming for Mobile App Development 
//
//  Created by nguyen.van.vuong on 26/10/2022.
//

import Foundation

class OperatorsAndExpressions {
    
    init() {
        print("=============================================")
        print("Swift Operators and Expressions")
        print("---------------------------------------------")
    }
    
    func basicAssignment() {
        var x: Int? // Declare an optional Int variable
        var y = 14// Declare and initialize a second Int variable
        var z: Int!
        
        x = 10 // Assign a value to x
        print("x = \(x!)")

        x = x! + y // Assign the result of x + y to x
        print("x = \(x!)")

        x = y // Assign the value of y to x
        print("x = \(x!)")
        
        z = 4
        print("z = \(z)")
        print("z = \(z!)")
    }
    
    func compoundAssignment() {
        var x = 10
        let y = 20

        x = x + y

        print("x = \(x)")
        
        /**
         Swift does not include the unary increment and decrement operations (i.e., i++, ++i, --i, and i--) available in many other languages. The closest equivalent in Swift are += and -= operators (i.e., i += 1).
         */
    }
    
    func comparison() {
        var result: Bool?
        var x = 10
        var y = 20

        result = x < y

        print("result = \(result!)")
        
        var flag = true // variable is true
        var secondFlag = !flag // secondFlag set to false
        
        if (10 < 20) || (20 < 10) {
            print("Expression is true")
        }
        
        if ((x < 100) && (x % 2 == 0)) {
          print("Even and less than 100")
        } else {
          print("Odd or greater than 100")
        }
    }
    
    func  ternary() {
        let x = 10
        let y = 20

        print("Largest number is \(x > y ? x : y)")
    }
    
    func nilCoalesing() {
        let customerName: String? = nil

        print("Welcome back, \(customerName ?? "customer")")
    }
    
    func range() {
        print("Closed range operator")
        
        for i in 5...8 {
            print(i)
        }
            
        print("Half-open range operator")
        
        for i in 5..<8 {
            print(i)
        }
        
        print("One-sided range operator")
        
        let fruits = [
            "apple",
            "orange",
            "apricot",
            "pineapple",
            "lime"
        ]

        print(fruits[...2])     // ["apple", "orange", "apricot"]
        print(fruits[..<2])     // ["apple", "orange"]
        print(fruits[2...])     // ["apricot", "pineapple", "line"]
    }
    
    func bitwise() {
        print("Bitwise NOT operator")
        /**
         00000011 NOT
         ========
         11111100
         */
        let y = 3
        let z = ~y

        print("Result is \(z)")
        
        print("Bitwise AND operator")
        /**
         10101011 AND
         00000011
         ========
         00000011
         */
        let a = 171
        let b = 3
        let c = a & b

        print("Result is \(c)")
        
        print("Bitwise OR operator")
        
        /**
         10101011 OR
         00000011
         ========
         10101011
         */
        
        let x1 = 171
        let y1 = 3
        let z1 = x1 | y1

        print("Result is \(z1)")
        
        print("Bitwise XOR operator")
        
        /**
         10101011 XOR
         00000011
         ========
         10101000
         */
        
        let x2 = 171
        let y2 = 3
        let z2 = x2 ^ y2

        print("Result is \(z2)")
        
        print("Bitwise left-shift operator")
        
        /**
         10101011 Left Shift one bit
         ========
         101010110
         */
        
        let x3 = 171
        let z3 = x3 << 1

        print("Result is \(z3)")
        
        print("Bitwise right-shift operator")
        
        /**
         10101011 Right Shift one bit
         ========
         01010101
         */
        
        let x4 = 171
        let z4 = x4 >> 1

        print("Result is \(z4)")
        
        print("Compound AND")
        
        var x5 = 58
        let y5 = 37

        x5 &= y5

        print("x = \(x5)")
        
        print("NOT operator")
        
        let x6 = 45

        let y6 = ~x6

        print("y = \(y6)")
    }

    func run() {
        self.basicAssignment()
        self.compoundAssignment()
        self.comparison()
        self.ternary()
        self.nilCoalesing()
        self.range()
        self.bitwise()
    }
}
