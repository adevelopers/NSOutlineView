//
//  OutlineProtocol.swift
//  NSOutlineSample
//
//  Created by adeveloper on 11.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation


protocol OutlineInteractionProtocol {
    
    
}

class OutlineInteraction: OutlineInteractionProtocol {
    
    static var rootItem:PersonItem?
    
    class func outlineViewChildIndexOfItem(index:Int, item:Any? ) -> Any{
        guard let person = item as? PersonItem else {
            return OutlineInteraction.rootItem!
        }
        
        return person.getChild(index)
    }

    
    class func outlineViewNumberOfChildren(item: Any?) -> Int {
        guard let person = item as? PersonProtocol else {
            print("numberOfChildrenOfItem: We have been passed the root object so we return 1")
            return 1
        }
        
        return person.numberOfChildren()
    }
}
