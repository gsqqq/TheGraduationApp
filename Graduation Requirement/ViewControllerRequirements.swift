//
//  ViewControllerRequirements.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

var breadthNum: String!

class ViewControllerRequirements: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    
    @IBOutlet weak var breadthText: UITextField!
    @IBOutlet weak var breadthPicker: UIPickerView!
    
    let breadths = ["0", "1", "2", "3", "4", ">=5"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return breadths[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return breadths.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        breadthText.text = breadths[row]
        breadthNum = breadths[row]
    }
    
    func getHowMany() -> String {
        return breadthNum
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
