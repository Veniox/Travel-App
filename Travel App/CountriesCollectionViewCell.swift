//
//  CountriesCollectionViewCell.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit


class CountriesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UI Elements
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    func setup(with countrie: Countrie) {
        imageView.image = countrie.image
        titleLabel.text = countrie.title
        
    }
    
}
