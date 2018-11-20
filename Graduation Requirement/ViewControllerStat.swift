//
//  ViewControllerStat.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//
//  This class is The UI class for if taken statistics courses querying
//

import UIKit
// storing the user input
var statStatus: String! = "Incompleted"
class ViewControllerStat: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statText: UITextField!
    @IBOutlet weak var statPicker: UIPickerView!
    
    // choiecs
    let stat = ["Completed", "Incompleted"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stat[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stat.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statText.text = stat[row]
        statStatus = stat[row]
    }
    
    // getting the user input
    func getStatCompleted() -> String {
        return statStatus
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
