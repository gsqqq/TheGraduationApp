//
//  ViewControllerDepth.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit
// storing the user input
var depthNum: String! = "0"

class ViewControllerDepth: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var areaText: UITextField!
    @IBOutlet weak var areaPicker: UIPickerView!
    
    @IBOutlet weak var depthText: UITextField!
    @IBOutlet weak var depthPicker: UIPickerView!

    let area = ["Software Engineering", "Algorithms and Theory", "Computer Systems, Networks and Security", "Databases and Data Mining", "Bioinformatics", "Artificial Intelligence"]
    
    let depth = ["0", "1", "2", "3", ">=4"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == areaPicker {
            return area[row]
        }
        else {
            return depth[row]
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == areaPicker {
            return area.count
        }
        else {
            return depth.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == areaPicker {
            areaText.text = area[row]
        }
        else if pickerView == depthPicker {
            depthText.text = depth[row]
            depthNum = depth[row]
        }
    }
    
    // getting the user input
    func getHowMany() -> String {
        return depthNum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
