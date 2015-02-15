//
//  MyLocations.swift
//  MyLocations
//
//  Created by 孙竞 on 15/1/30.
//  Copyright (c) 2015年 Sun Jing. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

class Locations: NSManagedObject {

    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var date: NSDate
    @NSManaged var locationDescription: String
    @NSManaged var category: String
    @NSManaged var placemark: CLPlacemark?

}
