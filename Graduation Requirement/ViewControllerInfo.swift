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
    
    var coreRemaining:[String] = ["EECS 132", "EECS 233", "EECS 281", "EECS 302", "EECS 340", "EECS 395"]
    
    
    
    @IBOutlet weak var label: UILabel!

    func getCoreRemain() -> [String] {
        for i in 0..<core!.getCore().count {
            coreRemaining.remove(at: coreRemaining.firstIndex(of: core!.getCore()[i])!)
        }
        return coreRemaining
    }
    
    func getBreadthRemain() -> Int {
        return 3 - Int((breadth?.getHowMany())!)!
    }
    
    func getTechRemain() -> Int {
        return 4 - Int((tech?.getHowMany())!)!
    }
    
    func getInfo() -> String {
        var yearString = year?.getYear()
        var techString = tech?.getHowMany()
        var degreeString = degree?.getDegree()
        var coreList = core?.getCore()
        var breadthString = breadth?.getHowMany()
        var coreListString: String = ""
        for i in 0..<coreRemaining.count {
            coreListString = coreListString + coreRemaining[i]
        }
        var finalString: String
        finalString = yearString! + degreeString!
        finalString = finalString + "tech remain"
        finalString = finalString + String(getTechRemain()) + "\nbreadth remain"
        finalString = finalString + String(getBreadthRemain()) + "\ncore Remain" + coreListString
        print (coreListString)
        return finalString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        year = ViewControllerYear()
        tech = ViewControllerTech()
        degree = ViewControllerDegree()
        core = TableViewControllerCore()
        breadth = ViewControllerRequirements()
        coreRemaining = getCoreRemain()
        print(core?.getCore())
        print ("remain")
        label.text = self.getInfo()
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
