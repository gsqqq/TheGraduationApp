//
//  ViewControllerYear.swift
//  Graduation RequirementTests
//
//  Created by Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class ViewControllerYearTest: XCTestCase {

    override func setUp() {
        // Setup code here

        // Stop immediately when a failure occurs.
        continueAfterFailure = false

        //Launch the application
        XCUIApplication().launch()

    }

    override func tearDown() {
        // Teardown code here
    }
    
    /* Test the correct functionality of users selecting the year 2021 as their expected
       graduation year*/
    func testYear() {
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].swipeUp()
        app.buttons["Confirm"].tap()
        
    }
    
    /* Test the correct functionality of users selecting the year 2020 as their expected
     graduation year*/
    func testYearTwo() {
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].swipeDown()
        app.buttons["Confirm"].tap()
    }
    
  
    
    

}
