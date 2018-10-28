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
    
    @IBOutlet weak var label: UILabel!
    
    
    func getInfo() -> String {
        var yearString = year?.getYear()
        var techString = tech?.getHowMany()
        var degreeString = degree?.getDegree()
        var coreList = core?.getCore()
        var finalString:String
        for str in coreList! {
            print(str)
        }
        finalString = yearString! + degreeString! + " tech " + techString! + " core "
        return finalString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        year = ViewControllerYear()
        tech = ViewControllerTech()
        degree = ViewControllerDegree()
        core = TableViewControllerCore()
        print(core?.getCore())
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
