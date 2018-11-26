//
//  TestBsDepth.swift
//  Graduation RequirementTests
//
//  Created by Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class TestBsDepth: XCTestCase {

    override func setUp() {
        // Setup code here

        // stop immediately when a failure occurs
        continueAfterFailure = false

        // launch the application
        XCUIApplication().launch()

    }

    override func tearDown() {
        // teardown code here.
    }
    
    /* Test the correct functionality of users selecting how many depth elective courses they
       have already taken*/
    func testBsDpeth() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].swipeDown();
        
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
        
        let doneButton = tablesQuery.buttons["Done"]
        doneButton.tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.swipeUp()
        confirmButton.tap()
        pickerWheel.swipeUp()
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
        doneButton.tap()
        app.pickerWheels["0"].swipeUp()
        confirmButton.tap()
        app.pickerWheels["Completed"].swipeDown();
        confirmButton.tap()
        
        let elementsQuery = app.scrollViews.otherElements
        elementsQuery/*@START_MENU_TOKEN@*/.pickerWheels["Software Engineering"].press(forDuration: 1.5);/*[[".pickers.pickerWheels[\"Software Engineering\"]",".tap()",".press(forDuration: 1.5);",".pickerWheels[\"Software Engineering\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        elementsQuery/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        elementsQuery.buttons["Confirm"].tap()
        
        
    }

}
