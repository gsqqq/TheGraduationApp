//
//  File.swift
//  Graduation Requirement
//
//  Created by 初始 on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerSchedule: UITableViewController {
    
    var year:ViewControllerYear? = nil
    var degree:ViewControllerDegree? = nil
    var core:TableViewControllerCore? = nil
    var tech:ViewControllerTech? = nil
    
    func getInfo() -> String {
        var yearString = year?.getYear()
        var degreeString = degree?.getDegree()
        var finalString:String
      //  finalString = yearString + degreeString
        return yearString! + degreeString!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        year = ViewControllerYear()
        tech = ViewControllerTech()
        degree = ViewControllerDegree()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

