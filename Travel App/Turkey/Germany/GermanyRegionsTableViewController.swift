//
//  GermanyRegionsTableViewController.swift
//  Travel App
//
//  Created by Tolga Sarikaya on 13.04.23.
//

import UIKit

class GermanyRegionsTableViewController: UITableViewController {

    private static let reuseIdentifier = "RegionsCellGermany"
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GermanyRegionsTableViewController.reuseIdentifier, for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Cold"
        case 1:
            cell.textLabel?.text = "Warm"
        default:
            break
        }
        return cell
    }

    

}
