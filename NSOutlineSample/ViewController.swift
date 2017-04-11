//
//  ViewController.swift
//  NSOutlineSample
//
//  Created by adeveloper on 10.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSOutlineViewDelegate, NSOutlineViewDataSource {

    @IBOutlet weak var uiOutline: NSOutlineView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiOutline.delegate = self
        uiOutline.dataSource = self
       // uiOutline.headerView = nil
        let columns = uiOutline.headerView?.subviews.count
        print(" \(columns)")

        // Do any additional setup after loading the view.
        self.loadDemoData()
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    //MARK DataSource
    func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any {
        
        return OutlineInteraction.outlineViewChildIndexOfItem(index: index, item: item)
    }

    
    func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int {
        
      return  OutlineInteraction.outlineViewNumberOfChildren(item: item)
    }
    
    func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool {
        
        let person = item as! PersonProtocol
        return person.isParent()
    }
    
    func outlineView(_ outlineView: NSOutlineView, objectValueFor tableColumn: NSTableColumn?, byItem item: Any?) -> Any? {
        guard let person = item as? PersonItem else {
            return nil
        }
        
        print("item: \(person.getText())")
        if tableColumn?.identifier == "columnName" {
            return person.getText() as! String
        }
        
        if tableColumn?.identifier == "columnAge" {
            return person.getAge()
        }
        
        
        return person.getText() as! String
    }
    
    
    
    
    func loadDemoData(){
        OutlineInteraction.rootItem = PersonItem("Yoda", 90)
        OutlineInteraction.rootItem?.isRoot = true
        
        let p1:PersonItem = PersonItem("One",  10)
        let p2:PersonItem = PersonItem("Two",  20)
        let p3:PersonItem = PersonItem("Three",  30)
        let p2_2:PersonItem = PersonItem("Four",  40)
        let p5:PersonItem = PersonItem("Five",  50)
        
        p2.addChild(p2_2)
        
        OutlineInteraction.rootItem?.addChild(p1)
        OutlineInteraction.rootItem?.addChild(p2)
        OutlineInteraction.rootItem?.addChild(p3)
        OutlineInteraction.rootItem?.addChild(p5)
    }
    
}

