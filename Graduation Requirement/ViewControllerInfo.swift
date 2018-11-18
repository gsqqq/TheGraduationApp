//
//  ViewControllerInfo.swift
//  Graduation Requirement
//
//  Created by 初始 on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//
// This class read all information from user input and
//  gemerate course schedule

import UIKit

class ViewControllerInfo: UIViewController {

    
    /* All variables from previous view
     *  controller that stores user input
     */
    var year:ViewControllerYear? = nil
    var degree:ViewControllerDegree? = nil
    var core:TableViewControllerCore? = nil
    var tech:ViewControllerTech? = nil
    var breadth:ViewControllerRequirements? = nil
    var depth:ViewControllerDepth? = nil
    var stat:ViewControllerStat? = nil
    var engrCore:TableViewControllerENGR? = nil
    var engrPhed:ViewControllerENGR? = nil
    var asCore:TableViewControllerA_S? = nil
    var asPhed:ViewControllerA_S? = nil
    
    
    /* Three lists of all courses that user might selected
     *   Elements to be removed if the user selected
     *   The remaining in the list is whatever needs to be scheduled
     */
    var coreRemaining:[String] = ["EECS 132", "EECS 233", "EECS 281", "EECS 302", "EECS 340", "EECS 395"]
    var engrCoreRemaining:[String] = ["MATH 121", "MATH 122 or MATH 124", "MATH 223 or MATH 227", "MATH 201 or MATH 307", "CHEM 111", "ENGR 145", "PHYS 121 or PHYS 123", "PHYS 122 or PHYS 124", "ENGR 398", "ENGL 398"]
    var asCoreRemaining:[String] = ["MATH 125", "MATH 126", "ENGL 398", "ENGR 398","Arts & Humanities I", "Arts & Humanities II", "Natural Sciences I", "Natural Sciences II", "Social Sciences I", "Social Sciences II", "Quantitative Reasoning", "Global & Cultural Diversity", "SAGES First Year Seminar", "Sages University Seminar I", "Sages University Seminar II"]
    var courseList:[String] = []
    var scheduleList:[String] = []
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label: UILabel!

    /*
     * Get CS core course remaining by removing user selected
     *   courses from coreRemaining
     */
    func getCoreRemain() -> [String] {
        for i in 0..<core!.getCore().count {
            coreRemaining.remove(at: coreRemaining.firstIndex(of: core!.getCore()[i])!)
        }
        return coreRemaining
    }
    
    /*
     * Get Engineering core course remaining by removing user selected
     *   courses from engrCoreRemaining
     */
    func getEngrCoreRemain() -> [String] {
        for i in 0..<engrCore!.getEngrCore().count {
            engrCoreRemaining.remove(at: engrCoreRemaining.firstIndex(of: engrCore!.getEngrCore()[i])!)
        }
        return engrCoreRemaining
    }
    
    /*
     * Get Arts and science core course remaining by removing user selected
     *   courses from asCoreRemaining
     */
    func getAsCoreRemain() -> [String] {
        for i in 0..<asCore!.getAsCore().count {
            asCoreRemaining.remove(at: asCoreRemaining.firstIndex(of: asCore!.getAsCore()[i])!)
        }
        return asCoreRemaining
    }
    
    /*
     * Get breadth course remaining regarding to the degree
     *   that the user chose
     */
    func getBreadthRemain() -> Int {
        if (tech?.getHowMany()) == ">=5" {
            return 0;
        }
        if (degree?.getDegree() == "Bachelor of Arts") {
            return 3 - Int((breadth?.getHowMany())!)!
        }
        return 5 - Int((breadth?.getHowMany())!)!
    }
    
    /*
     * Get technical course remaining regarding to the degree
     *   that the user chose
     */
    func getTechRemain() -> Int {
        if (tech?.getHowMany()) == ">=5" {
            return 0;
        }
        if (degree?.getDegree() == "Bachelor of Arts") {
            return 4 - Int((tech?.getHowMany())!)!
        }
        return 5 - Int((tech?.getHowMany())!)!
    }
    
    /*
     * Get depth course remaining regarding to the degree
     *   that the user chose (bs only)
     */
    func getDepthRemain() -> Int {
        if (depth?.getHowMany()) == ">=4" {
            return 0;
        }
        return 4 - Int((depth?.getHowMany())!)!
    }
    
    /* If the BS student completed statistics
     *  requirement, return 1 if not
     */
    func getStats() -> Int {
        if (stat?.getStatCompleted() == "Completed") {
            return 0;
        }
        return 1;
    }
    
    /* Calculate the PHED credits remaining
     *  Seperate for BA and BS because they are from
     *  different view controller
     */
    func getEngrPhed() -> Double {
        if (engrPhed?.getHowMany()) == ">=2" {
            return 0;
        }
        return 2 - Double((engrPhed?.getHowMany())!)!
    }
    func getAsPhed() -> Double {
        if (asPhed?.getHowMany()) == ">=2" {
            return 0;
        }
        return 2 - Double((asPhed?.getHowMany())!)!
    }
    
    /* Temperarily a helper function
     *  print out all course remaining
     *  calculate course schedule
     */
    func getInfo() -> [String] {
        let yearString = year?.getYear()
        let techString = tech?.getHowMany()
        let degreeString = degree?.getDegree()
        let coreList = core?.getCore()
        let breadthString = breadth?.getHowMany()
        let engrCoreList = engrCore?.getEngrCore()
        var coreListString: String = ""
        var engrCoreListString: String = ""
        var asCoreListString: String = ""
        for i in 0..<coreRemaining.count {
            courseList.append(coreRemaining[i])
            coreListString = coreListString + coreRemaining[i] + "\n"
        }
        
        var finalString: String
        var finalString2: String
        finalString = ""
        finalString2 = ""
        if (degree?.getDegree() == "Bachelor of Arts") {
            for i in 0..<asCoreRemaining.count {
                courseList.append(asCoreRemaining[i])
                asCoreListString = asCoreListString + asCoreRemaining[i] + "\n"
            }
            if getAsPhed() > 0 {
                let num = Int(getAsPhed() / 0.5)
                for _ in 0..<num {
                    courseList.append("PHED 0.5")
                }
            }
        } else {
            for i in 0..<engrCoreRemaining.count {
                courseList.append(engrCoreRemaining[i])
                engrCoreListString = engrCoreListString + engrCoreRemaining[i] + "\n"
            }
            if getStats()==1 {
                courseList.append("Statistics")
            }
            if getEngrPhed() > 0 {
                let num = Int(getEngrPhed() / 0.5)
                for _ in 0..<num {
                    courseList.append("PHED 0.5")
                }
            }
            for i in 0..<getDepthRemain() {
                courseList.append("Depth Requirement" + String(i+1))
            }
        }
        for i in 0..<getTechRemain() {
            courseList.append("Technical Elective" + String(i+1))
        }
        for i in 0..<getBreadthRemain() {
            courseList.append("Breadth Elective" + String(i+1))
        }
        let schedule:[[String]]
        schedule = getSchedule()
        for i in 0..<schedule.count {
            for j in 0..<schedule[i].count {
                finalString = finalString + schedule[i][j] + "\n"
            }
            finalString = finalString + "\n"
        }
        return [finalString,finalString]
    }
    
    /*
     * getter function for courseList
     */
    func getCourseList() -> [String] {
        return courseList
    }
    
    /*
     * getter function for schedule list
     */
    func getSchedule() -> [[String]] {
        var l:[[String]] = [[]]
        for i in 0..<scheduleList.count/5 + 1 {
            var j:[String] = []
            for k in 0..<5 {
                if (i*5+k < scheduleList.count){
                    j.append(scheduleList[i*5+k])
                }
            }
            l.append(j)
        }
        return l
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        year = ViewControllerYear()
        tech = ViewControllerTech()
        degree = ViewControllerDegree()
        core = TableViewControllerCore()
        breadth = ViewControllerRequirements()
        depth = ViewControllerDepth()
        stat = ViewControllerStat()
        engrCore = TableViewControllerENGR()
        engrPhed = ViewControllerENGR()
        asCore = TableViewControllerA_S()
        asPhed = ViewControllerA_S()
        coreRemaining = getCoreRemain()
        engrCoreRemaining = getEngrCoreRemain()
        asCoreRemaining = getAsCoreRemain()
        label.text = self.getInfo()[0]
        scheduleList = getCourseList()
        label2.text = self.getInfo()[1]
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
