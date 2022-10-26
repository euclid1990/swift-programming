//
//  TypesConstantsVariables.swift
//  Swift Programming for Mobile App Development
//
//  Created by nguyen.van.vuong on 26/10/2022.
//

import Foundation

class TypesConstantsVariables {
    
    init() {
        print("=============================================")
        print("Swift Types, Constants, and Variables")
        print("---------------------------------------------")
    }
    
    func variablesConstants() {
        print("Understanding Types, Variables, and Constants")
        
        var signalStrength = 2.231
        
        signalStrength = 2022
        
        let courseTitle: String
        
        courseTitle = "Swift Programming Essentials"
        
        print(courseTitle, signalStrength)
    }
    
    func numericalData() {
        var myFloat = 18739012.00
        var myDouble: Double = 1844674407370955161.99

        print(myFloat)
        print(myDouble)
        
        let lightsOn = false
        let audioOn: Bool = true

        if (lightsOn) {
          print("Lights are on.")
        } else {
          print("Lights are off.")
        }
    }
    
    func characterStringData() {
        var myChar1: Character = "f"
        var myChar2: Character = ":"
        var myChar3: Character = "X"

        print(myChar1, myChar2, myChar3)
        
        var myChar4: Character = "\u{2605}"

        print(myChar4)
        
        let myString = "This is a string"

        print(myString)
        
        var userName = "John"
        var inboxCount = 25
        let maxCount = 100

        var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount - inboxCount)"

        print(message)
        
        var multiline = """
             The console glowed with flashing warnings.
             Clearly time was running out.
         
             "I thought you said you knew how to fly this!" yelled Mary.
         
             "It was much easier on the simulator" replied her brother,
              trying to keep the panic out of his voice.
        """

        print(multiline)
        
        var multilineTripleQuoteIndent = """
             The console glowed with flashing warnings.
             Clearly time was running out.

                  "I thought you said you knew how to fly this!" yelled Mary.

             "It was much easier on the simulator" replied her brother,
             trying to keep the panic out of his voice.
             """

        print(multilineTripleQuoteIndent)
        
        print("Some Text\n\n\nSome more text")
        
        print("Special characters are escaped using the \\ character.")
    }
    
    func tuple() {
        let myTuple = (10, 432.433, "This is a String")
        let myStringIndex = myTuple.2

        print(myStringIndex)
        
        var (myInt, myFloat, myString) = myTuple

        print("myInt = \(myInt)")
        print("myFloat = \(myFloat)")
        print("myString = \(myString)")
        
        var (myInt2, _, myString2) = myTuple

        print("myInt = \(myInt2)")
        print("myString = \(myString2)")
        
        let myTupleWithName = (count: 10, length: 432.433, message: "This is a String")

        print(myTupleWithName.count)
        print(myTupleWithName.length)
        print(myTupleWithName.message)
    }
    
    func optionalType() {
        print("Declaring an optional variable")
        
        var index: Int?

        if index != nil {
            print("index variable has a value assigned to it")
        } else {
            print("index variable has no value assigned to it")
        }
        
        print("Forced unwrapping with exclamation mark")
        
        var index1: Int?

        index1 = 3

        var treeArray = ["Oak", "Pine", "Yew", "Birch"]

        if index1 != nil {
            print(treeArray[index1!])
        } else {
            print("index does not contain a value")
        }
        
        print("Optional binding")
        
        var index2: Int?

        index2 = 3

        var treeArray1 = ["Oak", "Pine", "Yew", "Birch"]

        if let myvalue = index2 {
            print(treeArray1[myvalue])
        } else {
            print("index does not contain a value")
        }
        
        
        var pet1: String?
        var pet2: String?
        let petCount = 1

        pet1 = "cat"
        pet2 = "dog"

        if let firstPet = pet1, let secondPet = pet2, petCount > 1 {
            print(firstPet)
            print(secondPet)
        } else {
            print("insufficient pets")
        }
        
        print("Implicit unwrapping")
        
        var index3: Int! // Optional is now implicitly unwrapped

        index3 = 3

        var treeArray2 = ["Oak", "Pine", "Yew", "Birch"]

        if index3 != nil {
            print(treeArray2[index3])
        } else {
            print("index does not contain a value")
        }
        
        /* var myString: String = nil // Invalid Code */
    }
    
    func typeCastAndTypeCheck() {
        print("Upcasting")
        /**
         let myButton: UIButton = UIButton()
         let myControl = myButton as UIControl
         */
        print("Downcasting")
        /**
         let myScrollView: UIScrollView = UIScrollView()
         let myTextView = myScrollView as UITextView
         */
        print("Conditional downcasting")
        /**
         if let myTextView = myScrollView as? UITextView {
         print("Type cast to UITextView succeeded")
         } else {
         print("Type cast to UITextView failed")
         }
         */
        print("Type checking")
        /**
         if myobject is MyClass {
             // myobject is an instance of MyClass
         }
         */
        
    }
    
    func run() {
        self.variablesConstants()
        self.numericalData()
        self.characterStringData()
        self.tuple()
        self.optionalType()
        self.typeCastAndTypeCheck()
    }
}
