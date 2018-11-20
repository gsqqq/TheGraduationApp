//
//  TableViewControllerCore.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//
//  This class is The UI class for CS core courses querying
//

import UIKit

// storing the user input
var coreChosen:[String] = []

class TableViewControllerCore: UITableViewController {
    
    // choiecs
    let cores = ["EECS 132", "EECS 233", "EECS 281", "EECS 302", "EECS 340", "EECS 395"]
    
    // MARK: - Table view data source
    
    // getting the user input
    func getCore() -> [String]{
        return coreChosen
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cores.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cores[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
            // remove from coreChosen if unselect
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
            var indexToRemove = coreChosen.firstIndex(of:cores[indexPath.row])
            coreChosen.remove(at: indexToRemove!)
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
            // append to coreChosen is select
            coreChosen.append(cores[indexPath.row])
            
        }
    }
    
}
