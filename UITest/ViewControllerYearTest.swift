//
//  ViewControllerYear.swift
//  Graduation RequirementUITests
//
//  Created by 毛毛 on 2018/10/28.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class ViewControllerYearTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testYear() {
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.pickerWheels["2020"]/*[[".pickers.pickerWheels[\"2020\"]",".pickerWheels[\"2020\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        app.buttons["Confirm"].tap()
        
    }
    
  
    
    

}