//
//  TestBsStats.swift
//  Graduation RequirementUITests
//
//  Created by Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class TestBsStats: XCTestCase {

    override func setUp() {
        //Setup code here
        //stop immediately when a failure occurs.
        continueAfterFailure = false

       //Launch the application
        XCUIApplication().launch()

    }

    override func tearDown() {
        //Teardown code here
    }

    /* Test the correct functionality of choosing whether they have taken statistics requirement course
     for users who choose Bachelor of Science as their degree*/
    
    func testExample() {
        
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.pickerWheels["2020"]/*[[".pickers.pickerWheels[\"2020\"]",".pickerWheels[\"2020\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let confirmButton = app.buttons["Confirm"]
        confirmButton.tap()
        
        let selectButton = app.buttons["Select"]
        selectButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 302"]/*[[".cells.staticTexts[\"EECS 302\"]",".staticTexts[\"EECS 302\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 340"]/*[[".cells.staticTexts[\"EECS 340\"]",".staticTexts[\"EECS 340\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 395"]/*[[".cells.staticTexts[\"EECS 395\"]",".staticTexts[\"EECS 395\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let doneButton = tablesQuery.buttons["Done"]
        doneButton.tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.tap()
        confirmButton.tap()
        pickerWheel.tap()
        confirmButton.tap()
        app.pickerWheels["Bachelor of Science"].swipeDown();
        confirmButton.tap()
        selectButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 121"]/*[[".cells.staticTexts[\"MATH 121\"]",".staticTexts[\"MATH 121\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 122 or MATH 124"]/*[[".cells.staticTexts[\"MATH 122 or MATH 124\"]",".staticTexts[\"MATH 122 or MATH 124\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 223 or MATH 227"]/*[[".cells.staticTexts[\"MATH 223 or MATH 227\"]",".staticTexts[\"MATH 223 or MATH 227\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 201 or MATH 307"]/*[[".cells.staticTexts[\"MATH 201 or MATH 307\"]",".staticTexts[\"MATH 201 or MATH 307\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["CHEM 111"]/*[[".cells.staticTexts[\"CHEM 111\"]",".staticTexts[\"CHEM 111\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ENGR 145"]/*[[".cells.staticTexts[\"ENGR 145\"]",".staticTexts[\"ENGR 145\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["PHYS 121 or PHYS 123"]/*[[".cells.staticTexts[\"PHYS 121 or PHYS 123\"]",".staticTexts[\"PHYS 121 or PHYS 123\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["PHYS 122 or PHYS 124"]/*[[".cells.staticTexts[\"PHYS 122 or PHYS 124\"]",".staticTexts[\"PHYS 122 or PHYS 124\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ENGR 398"]/*[[".cells.staticTexts[\"ENGR 398\"]",".staticTexts[\"ENGR 398\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ENGL 398"]/*[[".cells.staticTexts[\"ENGL 398\"]",".staticTexts[\"ENGL 398\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        doneButton.tap()
        pickerWheel.tap()
        confirmButton.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Completed"].press(forDuration: 0.8);/*[[".pickers.pickerWheels[\"Completed\"]",".tap()",".press(forDuration: 0.8);",".pickerWheels[\"Completed\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
        
    }

}
