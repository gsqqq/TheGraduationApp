//
//  TableViewControllerA_S.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//
//  This class is The UI class for BA core courses querying
//

import UIKit

// storing the user input
var asCoreChosen:[String] = []

class TableViewControllerA_S: UITableViewController {

    // choiecs
    let a_s = ["MATH 125", "MATH 126", "Department Seminar","Arts & Humanities I", "Arts & Humanities II", "Natural Sciences I", "Natural Sciences II", "Social Sciences I", "Social Sciences II", "Quantitative Reasoning", "Global & Cultural Diversity", "First Year Seminar", "University Seminar I", "University Seminar II"]
    
    // MARK: - Table view data source
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // getting the user input
    func getAsCore() -> [String]{
        return asCoreChosen
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a_s.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "a_scell", for: indexPath)
        cell.textLabel?.text = a_s[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
            //remove if unselect
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
            var indexToRemove = asCoreChosen.firstIndex(of:a_s[indexPath.row])
            asCoreChosen.remove(at: indexToRemove!)
        }
        else {
            //append if select
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
            asCoreChosen.append(a_s[indexPath.row])
        }
    }
}
