//
//  ViewController.swift
//  IntroToMapKit
//
//  Created by Angelica Bato on 7/21/16.
//  Copyright © 2016 Upperline Code. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    let upperlineLoc =  CLLocation(latitude: 40.709, longitude: -74.010)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func centerOnLocation(loc: CLLocation, mapview: MKMapView) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(loc.coordinate, 1000, 1000)
        mapview.setRegion(coordinateRegion, animated: true)
        
        let annot = MKPointAnnotation()
        annot.coordinate = loc.coordinate
        mapview.addAnnotation(annot)
    }

    @IBAction func findUpperlineTapped(sender: AnyObject) {
        centerOnLocation(upperlineLoc, mapview: myMap)
    }

}

