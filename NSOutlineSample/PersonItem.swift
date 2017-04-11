//
//  PersonItem.swift
//  NSOutlineSample
//
//  Created by adeveloper on 11.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation

/*

var isParent:Bool {get set}
func getChild(_ index:Int) -> PersonProtocol
func numberOfChildren() -> Int
func getText() -> Any

 */

class PersonItem: PersonProtocol {
    
    //MARK: Properties
    var name:String = ""
    var age:Int = 0
    var children:NSMutableArray = NSMutableArray()
    
    var description: NSString {
        get {
            return "\(name) age:\(age)" as NSString
        }
    }
    
    //MARK: inits
    init(_ name:String, _ age:Int){
        self.name = name
        self.age = age
    }
    
    //MARK: Adding
    func addChild(_ person:PersonProtocol){
        children.add(person)
    }
    
    
    //MARK: Person Protocol
    var isRoot: Bool = false
    
    func isParent() -> Bool {
        print("count: \(children.count)")
        
        if children.count > 0 {
            return true
        }
        else {
            return false
        }
    }
    
    func getText() -> Any {
        return self.name
    }
    
    func numberOfChildren() -> Int {
        return children.count
    }
    
    func getChild(_ index: Int) -> PersonProtocol {
        
        return children.object(at: index) as! PersonProtocol
    }
}
