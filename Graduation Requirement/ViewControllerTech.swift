//
//  ViewControllerTech.swift
//  Graduation Requirement
//
//  Created by Yue Shu on 10/27/18.
//  Copyright © 2018 EECS393. All rights reserved.
//

import UIKit

var techNum: String!
class ViewControllerTech: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    @IBOutlet weak var techText: UITextField!
    @IBOutlet weak var techPicker: UIPickerView!
    
    var year:ViewControllerYear? = nil
    
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
        let isEqual = (year?.getYear() == "2020")
        if isEqual{
            print("2020")
        } else {
            print("2021")
        }
      //  let remain : Int = Int(techText.text!)
      //  print(remain + 1)
    }
    
    func remain() {
        let remain = Int(techText.text!)
        print(remain)
    }
    
    func getHowMany() -> String {
        return techNum
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        year = ViewControllerYear()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


