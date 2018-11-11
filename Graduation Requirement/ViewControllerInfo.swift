//
//  ViewControllerInfo.swift
//  Graduation Requirement
//
//  Created by 初始 on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController {

    var year:ViewControllerYear? = nil
    var degree:ViewControllerDegree? = nil
    var core:TableViewControllerCore? = nil
    var tech:ViewControllerTech? = nil
    var breadth:ViewControllerRequirements? = nil
    var depth:ViewControllerDepth? = nil
    var stat:ViewControllerStat? = nil
    var engrCore:TableViewControllerENGR? = nil
    var engrPhed:ViewControllerENGR? = nil
    
    var coreRemaining:[String] = ["EECS 132", "EECS 233", "EECS 281", "EECS 302", "EECS 340", "EECS 395"]
    
    var engrCoreRemaining:[String] = ["MATH 121", "MATH 122 or MATH 124", "MATH 223 or MATH 227", "MATH 201 or MATH 307", "CHEM 111", "ENGR 145", "PHYS 121 or PHYS 123", "PHYS 122 or PHYS 124", "ENGR 398", "ENGL 398"]
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label: UILabel!

    func getCoreRemain() -> [String] {
        for i in 0..<core!.getCore().count {
            coreRemaining.remove(at: coreRemaining.firstIndex(of: core!.getCore()[i])!)
        }
        return coreRemaining
    }
    
    func getEngrCoreRemain() -> [String] {
        for i in 0..<engrCore!.getEngrCore().count {
            engrCoreRemaining.remove(at: engrCoreRemaining.firstIndex(of: engrCore!.getEngrCore()[i])!)
        }
        return engrCoreRemaining
    }
    
    func getBreadthRemain() -> Int {
        if (tech?.getHowMany()) == ">=5" {
            return 0;
        }
        if (degree?.getDegree() == "Bachelor of Arts") {
            return 3 - Int((breadth?.getHowMany())!)!
        }
        return 5 - Int((breadth?.getHowMany())!)!
    }
    
    func getTechRemain() -> Int {
        if (tech?.getHowMany()) == ">=5" {
            return 0;
        }
        if (degree?.getDegree() == "Bachelor of Arts") {
            return 4 - Int((tech?.getHowMany())!)!
        }
        return 5 - Int((tech?.getHowMany())!)!
    }
    
    func getDepthRemain() -> Int {
        if (depth?.getHowMany()) == ">=5" {
            return 0;
        }
        return 5 - Int((depth?.getHowMany())!)!
    }
    
    func getStats() -> Int {
        if (stat?.getStatCompleted() == "Completed") {
            return 0;
        }
        return 1;
    }
    
    func getEngrPhed() -> Double {
        if (engrPhed?.getHowMany()) == ">=2" {
            return 0;
        }
        return 2 - Double((engrPhed?.getHowMany())!)!
    }
    
    func getInfo() -> [String] {
        var yearString = year?.getYear()
        var techString = tech?.getHowMany()
        var degreeString = degree?.getDegree()
        var coreList = core?.getCore()
        var breadthString = breadth?.getHowMany()
        var engrCoreList = engrCore?.getEngrCore()
        var coreListString: String = ""
        var engrCoreListString: String = ""
        for i in 0..<coreRemaining.count {
            coreListString = coreListString + coreRemaining[i] + "\n"
        }
        for i in 0..<engrCoreRemaining.count {
            engrCoreListString = engrCoreListString + engrCoreRemaining[i] + "\n"
        }
        var finalString: String
        var finalString2: String
        finalString = yearString! + "\n" + degreeString! + "\n"
        finalString = finalString + "tech remain"
        finalString = finalString + String(getTechRemain()) + "\nbreadth remain"
        finalString = finalString + String(getBreadthRemain())
        finalString2 = "core Remain\n" + coreListString
        if (degree?.getDegree() == "Bachelor of Arts") {
            
        } else {
            finalString2 = finalString2 + "engr core Remain\n" + engrCoreListString
            finalString = finalString + "\ndepth remain" + String (getDepthRemain())
            finalString = finalString + "\n stat" + String(getStats()) + "\n phed" + String(getEngrPhed())
        }
        print (coreListString)
        return [finalString,finalString2]
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
        coreRemaining = getCoreRemain()
        engrCoreRemaining = getEngrCoreRemain()
        print(core?.getCore())
        print ("remain")
        label.text = self.getInfo()[0]
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
