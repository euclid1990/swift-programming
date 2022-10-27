//
//  FunctionMethodClosures.swift
//  Swift Programming for Mobile App Development 
//
//  Created by nguyen.van.vuong on 27/10/2022.
//

import Foundation

class FunctionMethodClosures {
    init() {
        print("=============================================")
        print("Swift Functions, Methods, and Closures")
        print("---------------------------------------------")
    }
    
    func buildMessageFor(name: String, count: Int) -> String {
        return ("\(name), you are customer number \(count)")
    }
    
    func buildMessageForImplicitReturn(name: String, count: Int) -> String {
        ("\(name), you are customer number \(count)")
    }
    
    func buildMessageForRemoveInternalParameterName(_ name: String, _ count: Int) -> String {
        return("\(name), you are customer number \(count)")
    }
    
    func buildMessageForRemoveExternalParameterName(username name: String, usercount count: Int)
    -> String {
        return("\(name), you are customer number \(count)")
    }
    
    func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float,
                                            meters: Float) {
        
        let yards = length * 0.0277778
        let centimeters = length * 2.54
        let meters = length * 0.0254
        return (yards, centimeters, meters)
    }
    
    func displayStrings(_ strings: String...)
    {
        for string in strings {
            print(string)
        }
    }
    
    func calcuateArea(length: Float, width: Float) -> Float {
        // All parameters accepted by a function are treated as constants by default.
        var length = length
        var width = width
        
        length = length * 2.54
        width = width * 2.54
        return length * width
    }
    
    func doubleValue (_ value: Int) -> Int {
        var value = value
        value += value
        return(value)
    }
    
    func doubleValueInout (_ value: inout Int) -> Int {
        value += value
        return(value)
    }
    
    func functionAsParameter() {
        func inchesToFeet (_ inches: Float) -> Float {
            return inches * 0.0833333
        }
        
        func inchesToYards (_ inches: Float) -> Float {
            return inches * 0.0277778
        }
        
        func outputConversion(_ converterFunc: (Float) -> Float, value: Float) {
            let result = converterFunc(value)
            print("Result of conversion is \(result)")
        }
        
        let toFeet = inchesToFeet
        let toYards = inchesToYards
        
        outputConversion(toYards, value: 10) // Convert to Yards
        outputConversion(toFeet, value: 10) // Convert to Inches
    }
    
    func addNumbers(_ numbers: Int...) -> Int
    {
        var total = 0
        
        for number in numbers {
            total += number
        }
        
        return total
    }
    
    func closure() {
        let sayHello = { print("Hello") }
        sayHello()
        
        let multiply = {(_ val1: Int, _ val2: Int) -> Int in
            return val1 * val2
        }
        
        let result = multiply(10, 20)
        print("result = \(result)")
        
        func functionA() -> () -> Int {

            let counter = 0

            func functionB() -> Int {
                return counter + 10
            }
            return functionB
        }

        let myClosure = functionA()
        let result1 = myClosure()

        print("result = \(result1)")
    }
    
    func shorthandArgumentNames() {
       /**
        let join = { (string1: String, string2: String) -> String in
            string1 + string2
        }
        */
        
        let join: (String, String) -> String = {
            $0 + $1
        }
        
        let joinDiscard: (_ string1: String, _ string2: String) -> String = {
            $0 + $1
        }
        
        let result = join("Hello ", "Swift")
        print(result)
    }
    
    func run() {
        print(self.buildMessageFor(name: "Nam", count: 1))
        print(self.buildMessageForImplicitReturn(name: "Nam", count: 2))
        _ = self.buildMessageFor(name: "John", count: 100)
        print(self.buildMessageForRemoveInternalParameterName("John", 100))
        print(self.buildMessageForRemoveExternalParameterName(username: "John", usercount: 100))
        
        let lengthTuple = self.sizeConverter(20)
        print("Yards = \(lengthTuple.yards)")
        print("Centimeters = \(lengthTuple.centimeters)")
        print("Meters = \(lengthTuple.meters)")
        
        self.displayStrings("one", "two", "three")
        print(self.calcuateArea(length: 10, width: 20))
        
        var myValue = 10
        print("Before function call myValue = \(myValue)")
        print("doubleValue call returns \(self.doubleValue(myValue))")
        print("After function call myValue = \(myValue)")
        
        print("Before function call myValue = \(myValue)")
        print("doubleValue call returned \(self.doubleValueInout(&myValue))")
        print("After function call myValue = \(myValue)")
        
        self.functionAsParameter()
        
        let result = self.addNumbers(10, 20, 40, 50)
        print("Result = \(result)")
        
        self.closure()
        self.shorthandArgumentNames()
    }
}
