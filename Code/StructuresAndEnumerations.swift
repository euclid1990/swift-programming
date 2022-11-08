//
//  StructuresAndEnumerations.swift
//  Swift Programming for Mobile App Development 
//
//  Created by nguyen.van.vuong on 08/11/2022.
//

import Foundation

struct SampleStruct {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() {
        "Hello " + name
    }
}

class SampleClass {

    var name: String

    init(name: String) {
        self.name = name
    }
 
    func buildHelloMsg() -> String {
        return "Hello " + name
    }
}

enum Temperature {
    case hot
    case warm
    case cold(centigrade: Int)
}

class StructuresAndEnumerations {
    
    init() {
        print("=============================================")
        print("Switch Structures And Enumerations")
        print("---------------------------------------------")
    }
    
    func sample() {
        let myStruct = SampleStruct(name: "Mark")
    }
    
    func structureValueType() {
        let myStruct1 = SampleStruct(name: "Mark")
        var myStruct2 = myStruct1
        myStruct2.name = "David"
        
        print("Structure instances are value type")
        print(myStruct1.name)
        print(myStruct2.name)
    }
    
    func classReferType() {
        let myClass1 = SampleClass(name: "Mark")
        var myClass2 = myClass1
        myClass2.name = "David"
        
        print("Class instances are reference type")
        print(myClass1.name)
        print(myClass2.name)
    }
    
    func displayTempInfo(temp: Temperature) {
        switch temp {
            case .hot:
                print("It is hot.")
            case .warm:
                print("It is warm.")
            case .cold(let cencius) where cencius <= 0:
                print("Ice warning: \(cencius) degrees.")
            case .cold:
                print("It is cold but not freezing.")
        }
    }
    
    func run() {
        self.sample()
        self.structureValueType()
        self.classReferType()
        
        self.displayTempInfo(temp: Temperature.warm)
        self.displayTempInfo(temp: Temperature.cold(centigrade: -10))
        self.displayTempInfo(temp: Temperature.cold(centigrade: 13))
    }
}
