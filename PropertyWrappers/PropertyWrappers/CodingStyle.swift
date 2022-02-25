//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by LACKY on 25.02.2022.
//

@propertyWrapper

struct CamelCaseProperty {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get {
            return value
        }
        set {
            var newValue = value.components(separatedBy: " ")
            value = ""
            for i in 0..<newValue.count {
                i == 0 ? newValue[i].firstLowercased : newValue[i].firstUppercased
                value = value + newValue[i]
            }
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

extension StringProtocol {
    var firstUppercased: String {
        return prefix(1).uppercased() + dropFirst()
    }
    var firstLowercased: String {
        return prefix(1).lowercased() + dropFirst()
    }
}
