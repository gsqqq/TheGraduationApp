//
//  ViewControllerTechTest.swift
//  Graduation RequirementTests
//
//  Created Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class ViewControllerTechTest: XCTestCase {

    override func setUp() {
        // Setup code here

        //Stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Teardown code here
    }

    /*Test the correct functionality of users selecting how many technical elective courses they have
      already taken*/
    func testTech() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].tap()
        
        let confirmButton = app.buttons["Confirm"]
        confirmButton.tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.swipeUp()
        app.buttons["Select"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.buttons["Done"].tap()
        pickerWheel/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
        pickerWheel/*@START_MENU_TOKEN@*/.press(forDuration: 0.9);/*[[".tap()",".press(forDuration: 0.9);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
       
    }
    
    

}
