//
//  GermanyMapVC.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit
import MapKit

class GermanyMapVC: UIViewController {

    @IBOutlet var mapview: MKMapView!
    
    private let dataSource: GermanyMapDataSource
    
    required init?(coder: NSCoder) {
        dataSource = GermanyMapDataSource()
        super.init(coder: coder)
        
        title = "Ski Centers"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapview.pointOfInterestFilter = MKPointOfInterestFilter(including: [.restaurant, .cafe, .nightlife,.hotel])
        
        mapview.addAnnotations(dataSource.annotations2)
        mapview.showAnnotations(dataSource.annotations2, animated: false)
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier, for: annotation) as? MKMarkerAnnotationView {
            
            if annotation is MKPointAnnotation {
               
                
            }
            return annotationView
        }
        return nil
    }

    

}
