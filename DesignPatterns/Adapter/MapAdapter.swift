//
//  MapAdapter.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation
import MapKit

protocol SimpleMap {
  func showPin(at coordinate: CLLocationCoordinate2D)
}

// Third‑party: MKMapView
class MapAdapter: SimpleMap {
    
    private let mk: MKMapView
    
    init(mkMapView: MKMapView) { self.mk = mkMapView }
    
    func showPin(at coordinate: CLLocationCoordinate2D) {
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        mk.addAnnotation(pin)
    }
}
