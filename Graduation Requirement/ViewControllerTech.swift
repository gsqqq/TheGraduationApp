//
//  ViewControllerTech.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//
//  This class is The UI class for # tech courses querying
//

import UIKit

// storing the user input
var techNum: String! = "0"
class ViewControllerTech: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    @IBOutlet weak var techText: UITextField!
    @IBOutlet weak var techPicker: UIPickerView!

    // choiecs
    let techs = ["0", "1", "2", "3", "4", ">=5"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return techs[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return techs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        techText.text = techs[row]
        techNum = techs[row]
    }
    
    // getting the user input
    func getHowMany() -> String {
        return techNum
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


