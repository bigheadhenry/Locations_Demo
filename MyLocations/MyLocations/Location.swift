//
//  Location.swift
//  MyLocations
//
//  Created by 孙竞 on 15/1/31.
//  Copyright (c) 2015年 Razeware. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation
import MapKit

@objc(Location)class Location: NSManagedObject/*, MKAnnotation*/ {
  
  /*var coordinate: CLLocationCoordinate2D {
    return CLLocationCoordinate2DMake(latitude, longitude)
  }
  
  var title: String! {
    if locationDescription.isEmpty {
      return"(No Description"
    } else {
      return locationDescription
    }
  }
  
  var subtitle: String! {
    return category
  }*/


    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var date: NSDate
    @NSManaged var locationDescription: String
    @NSManaged var category: String
    @NSManaged var placemark: CLPlacemark?

}
