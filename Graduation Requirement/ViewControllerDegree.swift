//
//  ViewControllerDegree.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 10/26/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

class ViewControllerDegree: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    
    //MARK: Properties
    @IBOutlet weak var degreeText: UITextField!
    @IBOutlet weak var degreePicker: UIPickerView!
    
    let degrees = ["Bachelor of Science", "Bachelor of Arts"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return degrees[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return degrees.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        degreeText.text = degrees[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
