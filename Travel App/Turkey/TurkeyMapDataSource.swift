//
//  TurkeyMapDataSource.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit
import MapKit

class MapDataSource {
    
    let annotations: [MKAnnotation]
    let annotations2: [MKAnnotation]
    
    
    init() {
        var annotationsWarmRegions = [MKAnnotation]()
        var annotationsColdRegions = [MKAnnotation]()
        
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 36.884804, longitude: 30.704044)
        annotation.title = "Antalya"
        annotationsWarmRegions.append(annotation)
        
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 38.423733, longitude: 27.142826)
        annotation.title = "izmir"
        annotationsWarmRegions.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 37.215374, longitude: 28.363394)
        annotation.title = "Mugla"
        annotationsWarmRegions.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 37.0331, longitude:  27.4290)
        annotation.title = "Bodrum"
        annotationsWarmRegions.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude:  37.8594, longitude: 27.2647)
        annotation.title = "Kuşadası"
        annotationsWarmRegions.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 36.8554, longitude: 28.2744)
        annotation.title = "Marmaris"
        annotationsWarmRegions.append(annotation)
        
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 36.6213, longitude: 29.1141)
        annotation.title = "Fethiye"
        annotationsWarmRegions.append(annotation)
        
        
        // Ski Center
        var annotationColdRegion = MKPointAnnotation()
        annotationColdRegion.coordinate = CLLocationCoordinate2D(latitude: 39.9086, longitude: 41.2597 )
        annotationColdRegion.title = "Erzurum: Palandöken"
        annotationsColdRegions.append(annotationColdRegion)
        
        annotationColdRegion = MKPointAnnotation()
        annotationColdRegion.coordinate = CLLocationCoordinate2D(latitude: 40.4467, longitude: 42.5569)
        annotationColdRegion.title = "Kars: Sarıkamış"
        annotationsColdRegions.append(annotationColdRegion)
        
        annotationColdRegion = MKPointAnnotation()
        annotationColdRegion.coordinate = CLLocationCoordinate2D(latitude: 40.0981, longitude: 29.3117)
        annotationColdRegion.title = "Bursa: Uludağ"
        annotationsColdRegions.append(annotationColdRegion)
        
        annotationColdRegion = MKPointAnnotation()
        annotationColdRegion.coordinate = CLLocationCoordinate2D(latitude: 37.7615, longitude: 30.5882)
        annotationColdRegion.title = "Isparta: Davraz"
        annotationsColdRegions.append(annotationColdRegion)
        
        self.annotations = annotationsWarmRegions
        self.annotations2 = annotationsColdRegions
    }
    
    
}
