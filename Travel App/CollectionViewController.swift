//
//  ViewController.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 12.04.23.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
      
        collectionView.backgroundView = UIImageView(image: UIImage(named: "Gruppe 1"))
        
    }


}

extension CollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountriesCollectionViewCell", for: indexPath) as! CountriesCollectionViewCell
        cell.setup(with: countries[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCountry = indexPath.item
        
        if selectedCountry == 0 {
            performSegue(withIdentifier: "toTurkeyRegions", sender: nil)
        } else if selectedCountry == 1 {
            performSegue(withIdentifier: "toGermanyRegions", sender: nil)
        }
    }
}
