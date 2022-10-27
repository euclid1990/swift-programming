//
//  ControlFlow.swift
//  Swift Programming for Mobile App Development 
//
//  Created by nguyen.van.vuong on 26/10/2022.
//

import Foundation

class ControlFlow {
    init() {
        print("=============================================")
        print("Switch Control Flow")
        print("---------------------------------------------")
    }
    
    func forIn() {
        for index in 1...5 {
            print("Value of index is \(index)")
        }
        
        var count = 0

        for _ in 1...5 {
            // No reference to the current value is required.
            count += 1
        }

        print("count = \(count)")
    }
    
    func whileLoop() {
        var myCount = 0

        while  myCount < 100 {
              myCount += 1
        }

        print("myCount = \(myCount)")
    }
    
    func repeatWhileLoop() {
        var i = 10

        repeat {
               i -= 1
               print("i = \(i)")
        } while (i > 0)

    }
    
    func breakingAndContinue() {
        var j = 10

        for _ in 0 ..< 100
        {
            j += j

            if j > 100 {
                break
            }

            print("j = \(j)")
        }
        
        var i = 1

        while i < 20
        {
                i += 1

                if (i % 2) != 0 {
                    continue
                }

                print("i = \(i)")
        }
    }
    
    func conditionalControlFlow() {
        let x = 8

        if x > 9 {
              print("x is greater than 9!")
        } else {
              print("x is less than 9!")
        }
        
        func multiplyByTen(value: Int?) {
            guard let number = value, number < 10 else {
                print("Number is too big")
                return
            }
            let result = number * 10
            print(result)
        }
        
        multiplyByTen(value: 3)
        multiplyByTen(value: 20)
    }
    
    func switchControl() {
        print("### A Swift switch statement example")
        
        var value = 4

        switch (value)
        {
              case 0:
                print("zero")

              case 1:
                print("one")

              case 2:
                print("two")

              case 3:
                print("three")

              case 4:
                print("four")

              case 5:
                print("five")

              default:
                print("Integer out of range")
        }
        
        print("### Combining case statements")
        
        value = 1

        switch (value)
        {
              case 0, 1, 2:
                print("zero, one or two")

              case 3:
                print("three")

              case 4:
                print("four")

              case 5:
                print("five")

              default:
                print("Integer out of range")
        }
        
        print("### Range matching in a switch statement")
        
        var temperature = 83

        switch (temperature)
        {
              case 0...49:
                print("Cold")

              case 50...79:
                print("Warm")

              case 80...110:
                print("Hot")

              default:
                print("Temperature out of range")
        }
        
        print("### Using the where statement")
        
        temperature = 53

        switch (temperature)
        {
            case 0...49 where temperature % 2 == 0:
                print("Cold and even")
            
            case 50...79 where temperature % 2 == 1:
                print("Warm and odd")

            case 50...79 where temperature % 2 == 0:
                print("Warm and even")

            case 80...110 where temperature % 2 == 0:
                print("Hot and even")

            default:
                print("Temperature out of range or odd")
        }
        
        print("### Fallthrough")
        
        temperature = 10

        switch (temperature)
        {
              case 0...49 where temperature % 2 == 0:
                print("Cold and even")
                fallthrough

              case 50...79 where temperature % 2 == 0:
                print("Warm and even")
                fallthrough

              case 80...110 where temperature % 2 == 0:
                print("Hot and even")
                fallthrough

              default:
                print("Temperature out of range or odd")
        }
    }
    
    func run() {
        self.forIn()
        self.whileLoop()
        self.repeatWhileLoop()
        self.breakingAndContinue()
        self.conditionalControlFlow()
        self.switchControl()
    }
}
