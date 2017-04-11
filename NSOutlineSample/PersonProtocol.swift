//
//  PersonProtocol.swift
//  NSOutlineSample
//
//  Created by adeveloper on 11.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation


protocol PersonProtocol {
    
    var isRoot:Bool {get set}
    
    func isParent() -> Bool
    
    func getChild(_ index:Int) -> PersonProtocol
    
    func numberOfChildren() -> Int

    func getText() -> Any
    
}
