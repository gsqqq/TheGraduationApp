//
//  TableViewControllerSchedule.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/25/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

//custom class for each semester cell
struct semesterData {
    var opened = Bool()
    var title = String()
    //course cells
    var courseData = [String]()
}

class TableViewControllerSchedule: UITableViewController {
    
    var tableViewData = [semesterData]()
    var scheduleData : ViewControllerInfo? = nil
    
    // MARK: - Table view data source
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleData = ViewControllerInfo()
        //melody please modify this part to generate the actual course schedule
        //title should be the semster
        //course data should be an array of String representing courses to be scheduled for each semester
        tableViewData = [semesterData(opened: false, title: "Spring 2019", courseData: scheduleData!.finalList[0]),
                         semesterData(opened: false, title: "Fall 2019", courseData: ["Course 1", "Course 2", "Course 3"]),
                         semesterData(opened: false, title: "Spring 2020", courseData: ["Course 1", "Course 2", "Course 3"])]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true {
            return tableViewData[section].courseData.count + 1
        }
        else {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "schedule") else {return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].title
            return cell
        }
        else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "schedule") else {return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].courseData[indexPath.row - 1]
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableViewData[indexPath.section].opened == true {
            tableViewData[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
        else {
            tableViewData[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
    }
}
