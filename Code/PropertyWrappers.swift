//
//  PropertyWrappers.swift
//  Swift Programming for Mobile App Development 
//
//  Created by nguyen.van.vuong on 09/11/2022.
//

import Foundation

struct Address {
    
    private var cityname: String = ""
    
    var city: String {
        get { cityname }
        set { cityname = newValue.uppercased() }
    }
}

@propertyWrapper
struct FixCase {
    var value: String = ""
 
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
 
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

@propertyWrapper
struct FixCase2 {
    var value: String = ""
 
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
 
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}

@propertyWrapper
struct MinMaxVal {
    var value: Int
    let max: Int
    let min: Int
    
    init(wrappedValue: Int, min: Int, max: Int) {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: Int {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct Demo {
    @MinMaxVal(min: 100, max: 200) var value: Int = 100
}

@propertyWrapper
struct MinMaxValComparable<V: Comparable> {
    var value: V
    let max: V
    let min: V
    
    init(wrappedValue: V, min: V, max: V) {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct DemoComparable {
    @MinMaxValComparable(min: "Apple", max: "Orange") var value: String = ""
}

struct DateDemo {
     @MinMaxValComparable(min: Date(), max: Calendar.current.date(byAdding: .month,
           value: 1, to: Date())! ) var value: Date = Date()
}

class PropertyWrappers {
    init() {
        print("=============================================")
        print("Swift Property Wrappers")
        print("---------------------------------------------")
    }
    
    func simplePropertyWrappers() {
        var address = Address()

        address.city = "London"
        print(address.city)
    }
    
    func decorator() {
        let contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")
        print("\(contact.name), \(contact.city), \(contact.country)")
        
        var demo = Demo()
        demo.value = 150
        print(demo.value)

        demo.value = 250
        print(demo.value)
        
        var demoComparable = DemoComparable()
        demoComparable.value = "Banana"
        print(demoComparable.value)

        demoComparable.value = "Pear"
        print(demoComparable.value)
    }
    
    func wrapperWithDate() {
        var dateDemo = DateDemo()
        print(dateDemo.value)

        // Property set to 10 days into the future.
        dateDemo.value = Calendar.current.date(byAdding: .day, value: 10, to: Date())!
        print(dateDemo.value)

        // Property is set to 3 months into the future.
        dateDemo.value = Calendar.current.date(byAdding: .month, value: 3, to: Date())!
        print(dateDemo.value)
    }
    
    func run() {
        self.simplePropertyWrappers()
        self.decorator()
        self.wrapperWithDate()
    }
}
