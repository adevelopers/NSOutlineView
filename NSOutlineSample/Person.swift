//
//  Person.swift
//  NSOutlineSample
//
//  Created by adeveloper on 10.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation


extension Person {
    
    
    func getChild(_ index:Int) -> Person {
        
        return children.object(at: index) as! Person
    }
    
    func numberOfChildren() -> Int {
        return children.count
    }
    
    func isParent() -> Bool {
        if children.count > 0 {
           return true
        }
        else {
            return false
        }
    }
    
    class var rootItem: Person {
        get {
            return Person(name: "Корень", age: 0)
        }
    }
    
    override open var description:String {
        get {
            return " class Person -> \(name)"
        }
    }
    
    func getText() -> String {
        return self.name
    }
}
