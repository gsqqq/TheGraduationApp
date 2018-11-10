//
//  ViewControllerStat.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

class ViewControllerStat: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statText: UITextField!
    @IBOutlet weak var statPicker: UIPickerView!
    
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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
