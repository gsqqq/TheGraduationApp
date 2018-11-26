//
//  ViewControllerDegreeTest.swift
//  Graduation RequirementTests
//
//  Created by Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class ViewControllerDegreeTest: XCTestCase {

    override func setUp() {
        // setup code here

        // stop immediately when a failure occurs.
        continueAfterFailure = false

        //launch the application
        XCUIApplication().launch()

        
    }

    override func tearDown() {
        // teardown code here
    }

    //Test the correct functionality of users selecting Bachelor of Science as they pursing degree
    func testDegreeCaseBs() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].tap()
        
        let confirmButton = app.buttons["Confirm"]
        confirmButton.tap()
        app.buttons["Select"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 302"]/*[[".cells.staticTexts[\"EECS 302\"]",".staticTexts[\"EECS 302\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 340"]/*[[".cells.staticTexts[\"EECS 340\"]",".staticTexts[\"EECS 340\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.buttons["Done"].tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.swipeUp()
        confirmButton.tap()
        pickerWheel.tap()
        pickerWheel.swipeUp()
        confirmButton.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Bachelor of Science"]/*[[".pickers.pickerWheels[\"Bachelor of Science\"]",".pickerWheels[\"Bachelor of Science\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        confirmButton.tap()
        
    }
    
    //Test the correct functionality of users selecting Bachelor of Arts as they pursing degree
    func testDegreeCaseBa() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].tap()
        
        let confirmButton = app.buttons["Confirm"]
        confirmButton.tap()
        app.buttons["Select"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 302"]/*[[".cells.staticTexts[\"EECS 302\"]",".staticTexts[\"EECS 302\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 340"]/*[[".cells.staticTexts[\"EECS 340\"]",".staticTexts[\"EECS 340\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.buttons["Done"].tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.swipeUp()
        confirmButton.tap()
        pickerWheel.tap()
        pickerWheel.swipeUp()
        confirmButton.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Bachelor of Science"]/*[[".pickers.pickerWheels[\"Bachelor of Science\"]",".pickerWheels[\"Bachelor of Science\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        confirmButton.tap()
        
    }
    
    

}
