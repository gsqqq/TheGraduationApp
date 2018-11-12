//
//  ViewControllerA&S.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 11/10/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit
// storing the user input
var phedNumAs: String!
class ViewControllerA_S: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var phedText: UITextField!
    @IBOutlet weak var phedPicker: UIPickerView!
    
    let phed = ["0", "0.5", "1", "1.5", ">=2"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return phed[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return phed.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        phedText.text = phed[row]
        phedNumAs = phed[row]
    }
    
    // getting the user input
    func getHowMany() -> String {
        return phedNumAs
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
