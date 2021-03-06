//
//  MapViewController.swift
//  MyLocations
//
//  Created by 孙竞 on 15/2/9.
//  Copyright (c) 2015年 Razeware. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  
  var managedObjectContext: NSManagedObjectContext!
  //var locations = [Location]()
  
  @IBAction func showUser() {
    let region = MKCoordinateRegionMakeWithDistance(mapView.userLocation.coordinate, 1000, 1000)
    mapView.setRegion(mapView.regionThatFits(region), animated: true)
  }
  
  @IBAction func showLocations() {
    /*let region = regionForAnnotations(locations)
    mapView.setRegion(region, animated: true)*/
    }
  /*func updateLocations() {
    let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: managedObjectContext)
    let fetchRequest = NSFetchRequest()
    fetchRequest.entity = entity
    
    var error: NSError?
    let foundObjects = managedObjectContext.executeFetchRequest(fetchRequest, error: &error)
    if foundObjects == nil {
      fatalCoreDataError(error)
      return
    }
    mapView.removeAnnotations(locations)
    locations = foundObjects as [Location]
    mapView.addAnnotations(locations)
  }*/
  override func viewDidLoad() {
    super.viewDidLoad()
    //updateLocations()
    
    /*if !locations.isEmpty {
      showLocations()
    }*/
  }
  
  /*func regionForAnnotations(annotations: [MKAnnotation]) -> MKCoordinateRegion {
    var region: MKCoordinateRegion
    switch annotations.count {
    case 0:
      region = MKCoordinateRegionMakeWithDistance(mapView.userLocation.coordinate, 1000, 1000)
      
    case 1:
      let annotation = annotations[annotations.count - 1]
      region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 1000, 1000)
      
    default:
      var topLeftCoord = CLLocationCoordinate2D(latitude: -90, longitude: 180)
      var buttomRightCoord = CLLocationCoordinate2D(latitude: 90, longitude: -180)
      
      for annotation in annotations {
        topLeftCoord.latitude = max(topLeftCoord.latitude, annotation.coordinate.latitude)
        topLeftCoord.longitude = min(topLeftCoord.longitude, annotation.coordinate.longitude)
        buttomRightCoord.latitude = min(buttomRightCoord.latitude, annotation.coordinate.latitude)
        buttomRightCoord.longitude = max(buttomRightCoord.longitude, annotation.coordinate.longitude)
      }
      let center = CLLocationCoordinate2D(latitude: topLeftCoord.latitude - (topLeftCoord.latitude - buttomRightCoord.latitude) / 2, longitude: topLeftCoord.longitude - (topLeftCoord.longitude - buttomRightCoord.longitude) / 2)
      let extraSpace = 1.1
      let span = MKCoordinateSpan(latitudeDelta: abs(topLeftCoord.latitude - buttomRightCoord.latitude) * extraSpace, longitudeDelta: abs(topLeftCoord.longitude - buttomRightCoord.longitude) * extraSpace)
      region = MKCoordinateRegion(center: center, span: span)
    }
    return mapView.regionThatFits(region)
  }*/
}


extension MapViewController: MKMapViewDelegate {
}