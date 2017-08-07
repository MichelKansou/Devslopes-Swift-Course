//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Michel Kansou on 27/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
