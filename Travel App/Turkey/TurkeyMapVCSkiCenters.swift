//
//  TurkeyMapVCSkiCenters.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit
import MapKit

class TurkeyMapVCSkiCenters: UIViewController {

    // MARK: - UI Elements
    @IBOutlet var mapView2: MKMapView!
    
    private let dataSource: MapDataSource
    
    required init?(coder: NSCoder) {
        dataSource = MapDataSource()
        super.init(coder: coder)
        
        title = "Ski Centers"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        mapView2.pointOfInterestFilter = MKPointOfInterestFilter(including: [.restaurant, .cafe, .nightlife,.hotel])
        
        mapView2.addAnnotations(dataSource.annotations2)
        mapView2.showAnnotations(dataSource.annotations2, animated: false)
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let pinView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier, for: annotation) as? MKMarkerAnnotationView {
            
            if annotation is MKPointAnnotation {
              
                
            }
            return pinView
        }
        return nil
    }
    

    

}
