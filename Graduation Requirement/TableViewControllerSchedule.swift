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
var scheduleData : ViewControllerInfo? = nil
class TableViewControllerSchedule: UITableViewController {
    
    var tableViewData = [semesterData]()
    
    
    // MARK: - Table view data source
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleData = ViewControllerInfo()
        print(scheduleData)
        print(finalList)
        //melody please modify this part to generate the actual course schedule
        //title should be the semster
        //course data should be an array of String representing courses to be scheduled for each semester
        if (yearChosen == "Spring 2021" ){
        tableViewData = [semesterData(opened: false, title: "Spring 2019", courseData: (finalList[0])),
                         semesterData(opened: false, title: "Fall 2019", courseData: finalList[1]),
                         semesterData(opened: false, title: "Spring 2020", courseData: finalList[2]),]
        } else if (yearChosen == "Fall 2021" ) {
            tableViewData = [semesterData(opened: false, title: "Spring 2019", courseData: (finalList[0])),
                             semesterData(opened: false, title: "Fall 2019", courseData: finalList[1]),
                             semesterData(opened: false, title: "Spring 2020", courseData: finalList[2]),
                             semesterData(opened: false, title: "Fall 2020", courseData: finalList[3]),
            ]
        } else if (yearChosen == "Spring 2022" ) {
            tableViewData = [semesterData(opened: false, title: "Spring 2019", courseData: (finalList[0])),
                             semesterData(opened: false, title: "Fall 2019", courseData: finalList[1]),
                             semesterData(opened: false, title: "Spring 2020", courseData: finalList[2]),
                             semesterData(opened: false, title: "Fall 2020", courseData: finalList[3]),
            semesterData(opened: false, title: "Spring 2021", courseData: finalList[4]),]
        } else {
            tableViewData = [semesterData(opened: false, title: "Spring 2019", courseData: (finalList[0])),
                             semesterData(opened: false, title: "Fall 2019", courseData: finalList[1]),
                             semesterData(opened: false, title: "Spring 2020", courseData: finalList[2]),
                             semesterData(opened: false, title: "Fall 2020", courseData: finalList[3]),
                             semesterData(opened: false, title: "Spring 2021", courseData: finalList[4]),
            semesterData(opened: false, title: "Fall 2021", courseData: finalList[5])]
        }
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
