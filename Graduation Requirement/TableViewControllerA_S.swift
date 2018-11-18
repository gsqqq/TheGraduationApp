//
//  TableViewControllerA_S.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

// storing the user input
var asCoreChosen:[String] = []

class TableViewControllerA_S: UITableViewController {

    let a_s = ["MATH 125", "MATH 126", "ENGL 398", "ENGR 398","Arts & Humanities I", "Arts & Humanities II", "Natural Sciences I", "Natural Sciences II", "Social Sciences I", "Social Sciences II", "Quantitative Reasoning", "Global & Cultural Diversity", "SAGES First Year Seminar", "Sages University Seminar I", "Sages University Seminar II"]
    
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
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
            var indexToRemove = asCoreChosen.firstIndex(of:a_s[indexPath.row])
            asCoreChosen.remove(at: indexToRemove!)
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
            asCoreChosen.append(a_s[indexPath.row])
        }
    }
}