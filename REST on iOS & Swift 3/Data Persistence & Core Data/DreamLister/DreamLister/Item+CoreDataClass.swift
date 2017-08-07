//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Michel Kansou on 27/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
        
    }
}
