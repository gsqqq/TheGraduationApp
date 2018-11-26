//
//  ViewControllerInfo.swift
//  Graduation Requirement
//
//  Created by Melody on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//
// This class read all information from user input and
//  gemerate course schedule

import UIKit

var finalList:[[String]] = []
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
    var engrCoreRemaining:[String] = ["MATH 121", "MATH 122 or MATH 124", "MATH 223 or MATH 227", "MATH 201 or MATH 307", "CHEM 111", "ENGR 145", "PHYS 121 or PHYS 123", "PHYS 122 or PHYS 124", "ENGR 398", "ENGL 398", "First Year Seminar", "University Seminar I", "University Seminar II", "Arts & Humanity or Social Science I", "Arts & Humanity or Social Science II", "Arts & Humanity or Social Science III", "Arts & Humanity or Social Science IV" ]
    var asCoreRemaining:[String] = ["MATH 125", "MATH 126", "Department Capstone","Arts & Humanities I", "Arts & Humanities II", "Natural Sciences I", "Natural Sciences II", "Social Sciences I", "Social Sciences II", "Quantitative Reasoning", "Global & Cultural Diversity", "First Year Seminar", "University Seminar I", "University Seminar II"]
    var optimalCoursesBS:[String] = ["MATH 121",
                                    "EECS 132","CHEM 111",
        "PHYS 121 or PHYS 123",
        "First Year Seminar",
        "Arts & Humanity or Social Science I",
        "Arts & Humanity or Social Science II",
        "MATH 122 or MATH 124",
        "EECS 233",
        "ENGR 145",
        "EECS 281",
        "PHYS 122 or PHYS 124",
        "Arts & Humanity or Social Science III",
        "Arts & Humanity or Social Science IV",
        "University Seminar I",
        "EECS 302",
        "Breadth Elective",
        "Breadth Elective",
        "MATH 223 or MATH 227",
        "ENGR 398",
        "ENGL 398",
        "Technical Elective",
        "Technical Elective",
        "Depth Requirement",
        "Depth Requirement",
        "Breadth Elective",
        "University Seminar II",
        "Statistics",
        "EECS 340",
        "MATH 201 or MATH 307",
        "Breadth Elective",
        "Breadth Elective", "Technical Elective", "Technical Elective","Technical Elective","Depth Requirement","Depth Requirement","EECS 395"]
    
    var optimalCoursesBA : [String] = ["MATH 125",
                                       "EECS 132",
                                       "First Year Seminar",
                                       "Arts & Humanities I",
        "Arts & Humanities II",
        "Natural Sciences I",
        "Natural Sciences II",
        "Arts & Humanities I",
        "Social Sciences I", "Social Sciences II",
        "MATH 126",
        "EECS 233",
        "EECS 281",
        "Quantitative Reasoning", "Global & Cultural Diversity",
        "University Seminar I",
        "EECS 302",
        "Breadth Elective",
        "Breadth Elective",
        "Technical Elective",
        "Technical Elective",
        "University Seminar II",
        "Statistics",
        "EECS 340",
        "Breadth Elective",
        "Technical Elective",
        "Technical Elective",
        "EECS 395",
        "Department Capstone"
]
    
    var courseList:[String] = []
    var scheduleList:[String] = []
    var takenList:[String] = []
    var numPhed = 0
    
    // variables from the UI
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
        if (breadth?.getHowMany()) == ">=5" {
            return 0;
        }
        if (degree?.getDegree() == "Bachelor of Arts") {
            return 3 - Int((breadth?.getHowMany())!)!
        }
        else {
            return 5 - Int((breadth?.getHowMany())!)!
        }
    }
    
    func getBreadthTaken() -> Int {
        if (degree?.getDegree() == "Bachelor of Arts") {
            if (breadth?.getHowMany()) == ">=5" {
                return 3;
            }
            return Int((breadth?.getHowMany())!)!
        }
        else {
            if (breadth?.getHowMany()) == ">=5" {
                return 5;
            }
            return Int((breadth?.getHowMany())!)!
        }
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
        else {
            return 5 - Int((tech?.getHowMany())!)!
        }
    }
    
    func getTechTaken() -> Int {
        if (degree?.getDegree() == "Bachelor of Arts") {
            if (tech?.getHowMany()) == ">=5" {
                return 3;
            }
            return Int((tech?.getHowMany())!)!
        }
        else {
            if (tech?.getHowMany()) == ">=5" {
                return 5;
            }
            return Int((tech?.getHowMany())!)!
        }
    }
    
    /*
     * Get depth course remaining regarding to the degree
     *   that the user chose (bs only)
     */
    func getDepthRemain() -> Int {
        if (depth?.getHowMany()) == ">=4" {
            return 0;
        } else {
            return 4 - Int((depth?.getHowMany())!)!
        }
    }
    
    func getDepthTaken () -> Int {
        if (depth?.getHowMany()) == ">=4" {
            return 4;
        } else {
            return Int((depth?.getHowMany())!)!
        }
    }

    
    /*
     * If the BS student completed statistics
     *  requirement, return 1 if not
     */
    func getStats() -> Int {
        if (stat?.getStatCompleted() == "Completed") {
            return 0;
        }
        return 1;
    }
    
    /*
     * Calculate the PHED credits remaining
     *  Seperate for BS because they are from
     *  different view controller
     */
    func getEngrPhed() -> Double {
        if (engrPhed?.getHowMany()) == ">=2" {
            return 0;
        }
        return 2 - Double((engrPhed?.getHowMany())!)!
    }
    
    func getEngrPhedTaken() -> Double {
        if (engrPhed?.getHowMany()) == ">=2" {
            return 2;
        }
        return Double((engrPhed?.getHowMany())!)!
    }
    
    /*
     * Calculate the PHED credits remaining
     *  Seperate for BA because they are from
     *  different view controller
     */
    func getAsPhed() -> Double {
        if (asPhed?.getHowMany()) == ">=2" {
            return 0;
        }
        return 2 - Double((asPhed?.getHowMany())!)!
    }
    
    func getAsPhedTaken() -> Double {
        if (asPhed?.getHowMany()) == ">=2" {
            return 2;
        }
        return Double((asPhed?.getHowMany())!)!
    }
    
    func getTakenList() -> [String] {
        
        for i in 0..<core!.getCore().count {
            takenList.append(core!.getCore()[i])
        }
        
        if (degree?.getDegree() == "Bachelor of Arts") { //BA
            //Append BA core remaining
            for i in 0..<asCore!.getAsCore().count {
                takenList.append(asCore!.getAsCore()[i])
            }
            for i in 0..<getBreadthTaken() {
                takenList.append("Breadth Elective")// + String(i+1))
            }
            for i in 0..<getTechTaken() {
                takenList.append("Technical Elective")// + String(i+1))
            }
            
            
        } else {  //BS
            // Append BS core remaining
            for i in 0..<engrCore!.getEngrCore().count {
                takenList.append(engrCore!.getEngrCore()[i])
            }
            if getStats()==0 {
                courseList.append("Statistics")
            }
            for _ in 0..<getDepthTaken() {
                takenList.append("Depth Requirement")// + String(i+1))
            }
            for _ in 0..<getBreadthTaken() {
                takenList.append("Breadth Elective")// + String(i+1))
            }
            for i in 0..<getTechTaken() {
                takenList.append("Technical Elective")// + String(i+1))
            }
        }
        return takenList
    }
    
    /*
     * Temperarily a helper function
     *  print out all course remaining
     *  calculate course schedule
     */
    func getInfo() -> [String] {
        var finalString: String
        var finalString2: String
        finalString = ""
        finalString2 = ""
        var taken = getTakenList()
        if (degree?.getDegree() == "Bachelor of Arts") {
            for i in 0..<taken.count {
                //print(taken[i])
                let indexToRemove = optimalCoursesBA.firstIndex(of: taken[i])
                optimalCoursesBA.remove(at: indexToRemove!)
            }
            for i in 0..<optimalCoursesBA.count {
                finalString = finalString + optimalCoursesBA[i] + "\n"
            }
        } else {
            for i in 0..<taken.count {
                //print(taken[i])
                optimalCoursesBS.remove(at: optimalCoursesBS
                    .firstIndex(of: taken[i])!)
            }
            for i in 0..<optimalCoursesBS.count {
                finalString = finalString + optimalCoursesBS[i] + "\n"
            }
        }
        finalList = getSchedule()
        print(finalList)
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
     * append courses into Schedule of 5 in a line
     */
    func getSchedule() -> [[String]] {
        let graduationTerm = year?.getYear()
        var terms = 0
        var k = 0
        if (graduationTerm == "Spring 2021") {
            terms = 3
        }
        if (graduationTerm == "Fall 2021") {
            terms = 4
        }
        if (graduationTerm == "Spring 2022") {
            terms = 5
        }
        if (graduationTerm == "Fall 2022") {
            terms = 6
        }
        if (degree?.getDegree() == "Bachelor of Arts") {
            var l:[[String]] = []
            let courseNum = optimalCoursesBA.count
            if (terms * 5 >= courseNum) {
                k = 0
            } else {
                k = courseNum % (terms * 5)
            }
            var index = 0
            // adding all courses 5 by 5
            for i in 0..<terms {
                var j:[String] = []
                var overload = 0
                if (k > 0) {
                    overload = k/(terms-i) + 1
                    k = k - overload
                }
                for _ in 0..<5 + overload {
                    if (index < courseNum){
                        j.append(optimalCoursesBA[index])
                        index = index + 1
                    }
                    overload = 0
                }
                l.append(j)
            }
            return l
        } else {
            var l:[[String]] = []
            print(optimalCoursesBS)
            let courseNum = optimalCoursesBS.count
            if (terms * 5 >= courseNum) {
                k = 0
            } else {
                k = courseNum % (terms * 5)
            }
            var index = 0
            // adding all courses 5 by 5
            for i in 0..<terms {
                var j:[String] = []
                var overload = 0
                if (k > 0) {
                    overload = k/(terms-i) + 1
                    k = k - overload
                }
                for _ in 0..<5 + overload {
                    if (index < courseNum){
                        j.append(optimalCoursesBS[index])
                        index = index + 1
                    }
                    overload = 0
                }
                l.append(j)
            }
            return l
        }
    }
    
    override func viewDidLoad() {
        //Initializations
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
        //label.text = self.getInfo()[0]
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
