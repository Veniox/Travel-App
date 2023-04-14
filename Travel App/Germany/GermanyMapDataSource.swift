//
//  GermanyMapDataSource.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit
import MapKit


class GermanyMapDataSource {
    
    let annotations: [MKAnnotation]
    let annotations2: [MKAnnotation]
    
    
    init() {
        var annotationsCastles = [MKAnnotation]()
        var annotationsSkiCenters = [MKAnnotation]()
        
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 47.4919, longitude: 11.0958)
        annotation.title = "Garmisch-Partenkirchen"
        annotationsSkiCenters.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 47.4078, longitude: 10.2797)
        annotation.title = "Oberstdorf"
        annotationsSkiCenters.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.1970, longitude: 8.5201)
        annotation.title = "Winterberg"
        annotationsSkiCenters.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 47.8672, longitude: 8.0039)
        annotation.title = "Feldberg"
        annotationsSkiCenters.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 47.6338 , longitude: 13.0048)
        annotation.title = "Berchtesgaden"
        annotationsSkiCenters.append(annotation)
        
        var annotationCastles = MKPointAnnotation()
        annotationCastles.coordinate = CLLocationCoordinate2D(latitude: 49.4094, longitude: 8.6947)
        annotationCastles.title = "Heidelberg"
        annotationsCastles.append(annotationCastles)
        
        annotationCastles = MKPointAnnotation()
        annotationCastles.coordinate = CLLocationCoordinate2D(latitude: 49.4550, longitude: 11.0778 )
        annotationCastles.title = "Nürnberg"
        annotationsCastles.append(annotationCastles)
        
        annotationCastles = MKPointAnnotation()
        annotationCastles.coordinate = CLLocationCoordinate2D(latitude: 49.3800, longitude: 10.1797)
        annotationCastles.title = "Rothenburg ob der Tauber"
        annotationsCastles.append(annotationCastles)
        
        annotationCastles = MKPointAnnotation()
        annotationCastles.coordinate = CLLocationCoordinate2D(latitude: 50.1453, longitude: 7.1673)
        annotationCastles.title = "Cochem"
        annotationsCastles.append(annotationCastles)
        
        annotationCastles = MKPointAnnotation()
        annotationCastles.coordinate = CLLocationCoordinate2D(latitude: 50.2786, longitude: 7.6407)
        annotationCastles.title = "Marksburg"
        annotationsCastles.append(annotationCastles)
        
        
        
     
        self.annotations = annotationsCastles
        self.annotations2 = annotationsSkiCenters
        
    }
    
}
