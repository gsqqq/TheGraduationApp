//
//  ViewControllerYear.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 9/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

var yearChosen: String!

class ViewControllerYear: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var graduationYearLabel: UILabel!
    @IBOutlet weak var yearPicker: UIPickerView!
    
    
    
    
    let years = ["2020", "2021"]

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return years[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return years.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nameTextField.text = years[row]
        yearChosen = years[row]
    }
    
    func getYear() -> String {
        //return nameTextField.text!
        return yearChosen
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

/*struct name {
    static var year = yearChosen
}
*/
