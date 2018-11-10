//
//  TableViewControllerENGR.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

class TableViewControllerENGR: UITableViewController {

    let engr = ["MATH 121", "MATH 122 or MATH 124", "MATH 223 or MATH 227", "MATH 201 or MATH 307", "CHEM 111", "ENGR 145", "PHYS 121 or PHYS 123", "PHYS 122 or PHYS 124", "ENGR 398", "ENGL 398"]
    
    // MARK: - Table view data source
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return engr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "engrcell", for: indexPath)
        cell.textLabel?.text = engr[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }

}
