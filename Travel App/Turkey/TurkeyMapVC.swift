//
//  TurkeyMapVC.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit
import MapKit

class TurkeyMapVC: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    private let dataSource: MapDataSource
    
    required init?(coder: NSCoder) {
        dataSource = MapDataSource()
        super.init(coder: coder)
        
        title = "Summer cities"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.restaurant, .cafe, .nightlife,.hotel])
        
        mapView.addAnnotations(dataSource.annotations)
        mapView.showAnnotations(dataSource.annotations, animated: false)
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
